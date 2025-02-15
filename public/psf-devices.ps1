function Find-FalconDuplicate {
<#
.SYNOPSIS
Find potential duplicate hosts within your Falcon environment
.DESCRIPTION
If the 'Hosts' parameter is not provided, all Host information will be retrieved. An error will be
displayed if required fields 'cid', 'device_id', 'first_seen', 'last_seen', 'hostname' and any defined
'filter' value are not present.

Hosts are grouped by 'cid', 'hostname' and any defined 'filter' values, then sorted by 'last_seen' time. Any
result other than the one with the most recent 'last_seen' time is considered a duplicate host and is returned
within the output.

Hosts can be hidden from the Falcon console by piping the results of 'Find-FalconDuplicate' to
'Invoke-FalconHostAction' using the action 'hide_host'.

Requires 'Hosts: Read'.
.PARAMETER Hosts
Array of detailed Host results
.PARAMETER Filter
Property to determine duplicates, in addition to 'Hostname'
.PARAMETER Platform
Filter hosts by platform
.LINK
https://github.com/crowdstrike/psfalcon/wiki/Find-FalconDuplicate
#>
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [Parameter(Position=1)]
        [object[]]$Hosts,
        [Parameter(Position=2)]
        [ValidateSet('external_ip','local_ip','mac_address','os_version','platform_name','serial_number',
            IgnoreCase=$false)]
        [string[]]$Filter,
        [Parameter(Position=3)]
        [ValidateSet('Linux','Mac','Windows',IgnoreCase=$false)]
        [string]$Platform
    )
    begin {
        function Group-Selection ($Object,$GroupBy) {
            ($Object | Group-Object $GroupBy).Where({ $_.Count -gt 1 -and $_.Name }).foreach{
                $_.Group | Sort-Object last_seen | Select-Object -First ($_.Count - 1)
            }
        }
        # Comparison criteria and required properties for host results
        [string[]]$Criteria = 'cid','hostname'
        [string[]]$Required = 'cid','device_id','first_seen','last_seen','hostname'
        if ($PSBoundParameters.Filter) {
            $Criteria = $Criteria + $PSBoundParameters.Filter
            $Required = $Required + $PSBoundParameters.Filter
        }
        # Create filter for excluding results with empty $Criteria values
        $FilterScript = "$(($Criteria).foreach{ "`$_.$($_)" } -join ' -and ')"
    }
    process {
        if ($PSCmdlet.ShouldProcess('Find-FalconDuplicate','Get-FalconHost')) {
            [object[]]$HostArray = if (!$PSBoundParameters.Hosts) {
                # Retrieve Host details
                $Param = @{
                    Detailed = $true
                    All = $true
                    ErrorAction = 'SilentlyContinue'
                }
                if ($PSBoundParameters.Platform) {
                    $Param['Filter'] = "platform_name:'$($PSBoundParameters.Platform)'"
                }
                Get-FalconHost @Param
            } else {
                $PSBoundParameters.Hosts
            }
            if ($HostArray) {
                @($Required).foreach{
                    if (($HostArray | Get-Member -MemberType NoteProperty).Name -notcontains $_) {
                        # Verify required properties are present
                        throw "Missing required property '$_'."
                    }
                }
                $Param = @{
                    # Group, sort and output result
                    Object = $HostArray | Select-Object $Required | Where-Object -FilterScript {$FilterScript}
                    GroupBy = $Criteria
                }
                $Output = Group-Selection @Param
                if ($Output) {
                    $Output
                } else {
                    $PSCmdlet.WriteWarning("[Find-FalconDuplicate] No duplicates found.")
                }
            }
        }
    }
}
function Find-FalconHostname {
<#
.SYNOPSIS
Find hosts using a list of hostnames
.DESCRIPTION
Perform hostname searches in groups of 100.

Requires 'Hosts: Read'.
.PARAMETER Path
Path to a plain text file containing hostnames
.PARAMETER Include
Include additional properties
.PARAMETER Partial
Perform a non-exact search
.PARAMETER Array
An array containing hostnames
.LINK
https://github.com/crowdstrike/psfalcon/wiki/Find-FalconHostname
#>
    [CmdletBinding(DefaultParameterSetName='Path',SupportsShouldProcess)]
    param(
        [Parameter(ParameterSetName='Path',Mandatory,Position=1)]
        [ValidateScript({
            if (Test-Path $_ -PathType Leaf) {
                $true
            } else {
                throw "Cannot find path '$_' because it does not exist."
            }
        })]
        [string]$Path,
        [Parameter(ParameterSetName='Path',Position=2)]
        [Parameter(ParameterSetName='Array',Position=2)]
        [ValidateSet('agent_version','cid','external_ip','first_seen','hostname','last_seen','local_ip',
            'mac_address','os_build','os_version','platform_name','product_type','product_type_desc',
            'serial_number','system_manufacturer','system_product_name','tags',IgnoreCase=$false)]
        [string[]]$Include,
        [Parameter(ParameterSetName='Path')]
        [Parameter(ParameterSetName='Array')]
        [switch]$Partial,
        [Parameter(ParameterSetName='Array',Mandatory,ValueFromPipeline)]
        [string[]]$Array
    )
    begin {
        if ($Path) {
            [string]$Path = $Script:Falcon.Api.Path($Path)
        } else {
            [System.Collections.Generic.List[string]]$List = @()
        }
        [string[]]$Select = 'device_id','hostname'
        if ($Include) { $Select += $Include }
    }
    process { if ($Array) { @($Array).foreach{ $List.Add($_) }}}
    end {
        [string[]]$HostList = if ($List) { $List } else { (Get-Content -Path $Path).Normalize() }
        $HostList = $HostList | Select-Object -Unique | Where-Object { ![string]::IsNullOrEmpty($_) }
        for ($i=0; $i -lt ($HostList | Measure-Object).Count; $i+=100) {
            [string[]]$TempList = $HostList[$i..($i + 99)]
            [string]$Filter = if ($Partial) {
                (@($TempList).foreach{ "hostname:'$_'" }) -join ','
            } else {
                (@($TempList).foreach{ "hostname:['$_']" }) -join ','
            }
            [object[]]$HostList = Get-FalconHost -Filter $Filter -Detailed | Select-Object $Select
            @($TempList).foreach{
                if (($Partial -and $HostList.hostname -notlike "$_*") -or (!$Partial -and
                $HostList.hostname -notcontains $_)) {
                    $PSCmdlet.WriteWarning("[Find-FalconHostname] No match found for '$_'.")
                }
            }
            if ($HostList) { $HostList }
        }
    }
}