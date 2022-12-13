@{
    RootModule           = 'PSFalcon.psm1'
    ModuleVersion        = '2.2.4'
    CompatiblePSEditions = @('Desktop','Core')
    GUID                 = 'd893eb9f-f6bb-4a40-9caf-aaff0e42acd1'
    Author               = 'Brendan Kremian'
    CompanyName          = 'CrowdStrike'
    Copyright            = '(c) CrowdStrike. All rights reserved.'
    Description          = 'PowerShell for the CrowdStrike Falcon OAuth2 APIs'
    HelpInfoURI          = 'https://github.com/CrowdStrike/psfalcon/wiki'
    PowerShellVersion    = '5.1'
    RequiredAssemblies   = @('System.Net.Http')
    ScriptsToProcess     = @('Class/Class.ps1')
    FunctionsToExport    = @(
      # alerts
      'Get-FalconAlert'
      'Invoke-FalconAlertAction'

      # archives
      'Expand-FalconSampleArchive'
      'Get-FalconSampleArchive'
      'Get-FalconSampleExtraction'
      'Remove-FalconSampleArchive'
      'Send-FalconSampleArchive'

      # cloud-connect-aws
      'Confirm-FalconDiscoverAwsAccess'
      'Edit-FalconDiscoverAwsAccount'
      'Get-FalconDiscoverAwsAccount'
      'Get-FalconDiscoverAwsLink'
      'Get-FalconDiscoverAwsSetting'
      'New-FalconDiscoverAwsAccount'
      'Receive-FalconDiscoverAwsScript'
      'Remove-FalconDiscoverAwsAccount'
      'Update-FalconDiscoverAwsSetting'

      # cloud-connect-azure
      'Get-FalconDiscoverAzureAccount'
      'Get-FalconDiscoverAzureCertificate'
      'New-FalconDiscoverAzureAccount'
      'Receive-FalconDiscoverAzureScript'
      'Update-FalconDiscoverAzureAccount'

      # cloud-connect-cspm-aws
      'Edit-FalconHorizonAwsAccount'
      'Get-FalconHorizonAwsAccount'
      'Get-FalconHorizonAwsLink'
      'New-FalconHorizonAwsAccount'
      'Receive-FalconHorizonAwsScript'
      'Remove-FalconHorizonAwsAccount'

      # cloud-connect-cspm-azure
      'Edit-FalconHorizonAzureAccount'
      'Get-FalconHorizonAzureAccount'
      'Get-FalconHorizonAzureCertificate'
      'New-FalconHorizonAzureAccount'
      'Receive-FalconHorizonAzureScript'
      'Remove-FalconHorizonAzureAccount'

      # cloud-connect-gcp
      'Get-FalconDiscoverGcpAccount'
      'New-FalconDiscoverGcpAccount'
      'Receive-FalconDiscoverGcpScript'

      # container-security
      'Get-FalconContainerAssessment'
      'Get-FalconContainerSensor'
      'Remove-FalconRegistryCredential'
      'Request-FalconRegistryCredential'
      'Remove-FalconContainerImage'
      'Show-FalconRegistryCredential'

      # detects
      'Edit-FalconDetection'
      'Get-FalconDetection'
      'Get-FalconHorizonIoa'
      'Get-FalconHorizonIom'

      # devices
      'Add-FalconGroupingTag'
      'Edit-FalconHostGroup'
      'Get-FalconHost'
      'Get-FalconHostGroup'
      'Get-FalconHostGroupMember'
      'Invoke-FalconHostAction'
      'Invoke-FalconHostGroupAction'
      'New-FalconHostGroup'
      'Remove-FalconGroupingTag'
      'Remove-FalconHostGroup'

      # discover
      'Get-FalconAsset'

      # enrollments
      'Invoke-FalconMobileAction'

      # falcon-complete-dashboards
      'Get-FalconCompleteAllowlist'
      'Get-FalconCompleteBlocklist'
      'Get-FalconCompleteCollection'
      'Get-FalconCompleteDetection'
      'Get-FalconCompleteEscalation'
      'Get-FalconCompleteIncident'
      'Get-FalconCompleteRemediation'

      # falconx
      'Get-FalconReport'
      'Get-FalconSubmission'
      'Get-FalconSubmissionQuota'
      'New-FalconSubmission'
      'Receive-FalconArtifact'
      'Remove-FalconReport'

      # filevantage
      'Get-FalconFimChange'

      # fwmgr
      'Edit-FalconFirewallGroup'
      'Edit-FalconFirewallSetting'
      'Get-FalconFirewallEvent'
      'Get-FalconFirewallField'
      'Get-FalconFirewallGroup'
      'Get-FalconFirewallLocation'
      'Get-FalconFirewallPlatform'
      'Get-FalconFirewallRule'
      'Get-FalconFirewallSetting'
      'New-FalconFirewallGroup'
      'Remove-FalconFirewallGroup'
      'Remove-FalconFirewallLocation'
      'Set-FalconFirewallLocationPrecedence'
      'Test-FalconFirewallPath'

      # identity-protection
      'Invoke-FalconIdentityGraph'

      # image-assessment
      'Get-FalconContainerVulnerability'

      # incidents
      'Get-FalconBehavior'
      'Get-FalconIncident'
      'Get-FalconScore'
      'Invoke-FalconIncidentAction'

      # indicators
      'Get-FalconIocHost'
      'Get-FalconIocProcess'

      # intel
      'Get-FalconActor'
      'Get-FalconCve'
      'Get-FalconIndicator'
      'Get-FalconIntel'
      'Get-FalconRule'
      'Receive-FalconIntel'
      'Receive-FalconRule'

      # installation-tokens
      'Edit-FalconInstallToken'
      'Edit-FalconInstallTokenSetting'
      'Get-FalconInstallToken'
      'Get-FalconInstallTokenEvent'
      'Get-FalconInstallTokenSetting'
      'New-FalconInstallToken'
      'Remove-FalconInstallToken'

      # ioa
      'Get-FalconHorizonIoaEvent'
      'Get-FalconHorizonIoaUser'

      # ioarules
      'Edit-FalconIoaGroup'
      'Edit-FalconIoaRule'
      'Get-FalconIoaGroup'
      'Get-FalconIoaPlatform'
      'Get-FalconIoaRule'
      'Get-FalconIoaSeverity'
      'Get-FalconIoaType'
      'New-FalconIoaGroup'
      'New-FalconIoaRule'
      'Remove-FalconIoaGroup'
      'Remove-FalconIoaRule'
      'Test-FalconIoaRule'

      # iocs
      'Edit-FalconIoc'
      'Get-FalconIoc'
      'Get-FalconIocAction'
      'Get-FalconIocPlatform'
      'Get-FalconIocSeverity'
      'Get-FalconIocType'
      'New-FalconIoc'
      'Remove-FalconIoc'

      # kubernetes-protection
      'Edit-FalconContainerAwsAccount'
      'Edit-FalconContainerAzureAccount'
      'Get-FalconContainerAwsAccount'
      'Get-FalconContainerAzureAccount'
      'Get-FalconContainerCloud'
      'Get-FalconContainerCluster'
      'Invoke-FalconContainerScan'
      'New-FalconContainerAwsAccount'
      'New-FalconContainerAzureAccount'
      'New-FalconContainerKey'
      'Receive-FalconContainerYaml'
      'Remove-FalconContainerAwsAccount'
      'Remove-FalconContainerAzureAccount'

      # malquery
      'Get-FalconMalQuery'
      'Get-FalconMalQueryQuota'
      'Get-FalconMalQuerySample'
      'Group-FalconMalQuerySample'
      'Invoke-FalconMalQuery'
      'Receive-FalconMalQuerySample'
      'Search-FalconMalQueryHash'

      # message-center
      'Add-FalconCompleteActivity'
      'Edit-FalconCompleteCase'
      'New-FalconCompleteCase'
      'Get-FalconCompleteActivity'
      'Get-FalconCompleteCase'
      'Receive-FalconCompleteAttachment'
      'Send-FalconCompleteAttachment'

      # mssp
      'Add-FalconCidGroupMember'
      'Add-FalconGroupRole'
      'Add-FalconUserGroupMember'
      'Edit-FalconCidGroup'
      'Edit-FalconUserGroup'
      'Get-FalconCidGroup'
      'Get-FalconCidGroupMember'
      'Get-FalconGroupRole'
      'Get-FalconMemberCid'
      'Get-FalconUserGroup'
      'Get-FalconUserGroupMember'
      'New-FalconCidGroup'
      'New-FalconUserGroup'
      'Remove-FalconCidGroup'
      'Remove-FalconCidGroupMember'
      'Remove-FalconGroupRole'
      'Remove-FalconUserGroup'
      'Remove-FalconUserGroupMember'

      # oauth2
      'Request-FalconToken'
      'Revoke-FalconToken'
      'Test-FalconToken'

      # ods
      'Get-FalconScan'
      'Get-FalconScanFile'
      'Get-FalconScanHost'
      'Get-FalconScheduledScan'
      'New-FalconScheduledScan'
      'Remove-FalconScheduledScan'
      'Start-FalconScan'
      'Stop-FalconScan'

      # overwatch-dashboards
      'Get-FalconOverWatchEvent'
      'Get-FalconOverWatchDetection'
      'Get-FalconOverWatchIncident'

      # policy-device-control
      'Edit-FalconDeviceControlPolicy'
      'Get-FalconDeviceControlPolicy'
      'Get-FalconDeviceControlPolicyMember'
      'Invoke-FalconDeviceControlPolicyAction'
      'New-FalconDeviceControlPolicy'
      'Remove-FalconDeviceControlPolicy'
      'Set-FalconDeviceControlPrecedence'

      # policy-firewall-management
      'Edit-FalconFirewallPolicy'
      'Get-FalconFirewallPolicy'
      'Get-FalconFirewallPolicyMember'
      'Invoke-FalconFirewallPolicyAction'
      'New-FalconFirewallPolicy'
      'Remove-FalconFirewallPolicy'
      'Set-FalconFirewallPrecedence'

      # policy-ioa-exclusions
      'ConvertTo-FalconIoaExclusion'
      'Edit-FalconIoaExclusion'
      'Get-FalconIoaExclusion'
      'New-FalconIoaExclusion'
      'Remove-FalconIoaExclusion'

      # policy-ml-exclusions
      'ConvertTo-FalconMlExclusion'
      'Edit-FalconMlExclusion'
      'Get-FalconMlExclusion'
      'New-FalconMlExclusion'
      'Remove-FalconMlExclusion'

      # policy-prevention
      'Edit-FalconPreventionPolicy'
      'Get-FalconPreventionPolicy'
      'Get-FalconPreventionPolicyMember'
      'Invoke-FalconPreventionPolicyAction'
      'New-FalconPreventionPolicy'
      'Remove-FalconPreventionPolicy'
      'Set-FalconPreventionPrecedence'

      # policy-response
      'Edit-FalconResponsePolicy'
      'Get-FalconResponsePolicy'
      'Get-FalconResponsePolicyMember'
      'Invoke-FalconResponsePolicyAction'
      'New-FalconResponsePolicy'
      'Remove-FalconResponsePolicy'
      'Set-FalconResponsePrecedence'

      # policy-sensor-update
      'Edit-FalconSensorUpdatePolicy'
      'Get-FalconBuild'
      'Get-FalconKernel'
      'Get-FalconSensorUpdatePolicy'
      'Get-FalconSensorUpdatePolicyMember'
      'Get-FalconUninstallToken'
      'Invoke-FalconSensorUpdatePolicyAction'
      'New-FalconSensorUpdatePolicy'
      'Remove-FalconSensorUpdatePolicy'
      'Set-FalconSensorUpdatePrecedence'

      # policy-sv-exclusions
      'Edit-FalconSvExclusion'
      'Get-FalconSvExclusion'
      'New-FalconSvExclusion'
      'Remove-FalconSvExclusion'

      # psf-config
      'Export-FalconConfig'
      'Import-FalconConfig'

      # psf-devices
      'Find-FalconDuplicate'
      'Find-FalconHostname'

      # psf-humio
      'Register-FalconEventCollector'
      'Send-FalconEvent'
      'Show-FalconEventCollector'
      'Unregister-FalconEventCollector'

      # psf-output
      'Export-FalconReport'
      'Send-FalconWebhook'
      'Show-FalconMap'
      'Show-FalconModule'

      # psf-policies
      'Compare-FalconPreventionPhase'
      'Copy-FalconDeviceControlPolicy'
      'Copy-FalconFirewallPolicy'
      'Copy-FalconPreventionPolicy'
      'Copy-FalconResponsePolicy'
      'Copy-FalconSensorUpdatePolicy'

      # psf-sensors
      'Add-FalconSensorTag'
      'Get-FalconSensorTag'
      'Remove-FalconSensorTag'
      'Uninstall-FalconSensor'

      # psf-real-time-response
      'Get-FalconQueue'
      'Invoke-FalconDeploy'
      'Invoke-FalconRtr'

      # quarantine
      'Get-FalconQuarantine'
      'Invoke-FalconQuarantineAction'
      'Test-FalconQuarantineAction'

      # real-time-response
      'Confirm-FalconAdminCommand'
      'Confirm-FalconCommand'
      'Confirm-FalconGetFile'
      'Confirm-FalconResponderCommand'
      'Edit-FalconScript'
      'Get-FalconPutFile'
      'Get-FalconScript'
      'Get-FalconSession'
      'Invoke-FalconAdminCommand'
      'Invoke-FalconBatchGet'
      'Invoke-FalconCommand'
      'Invoke-FalconResponderCommand'
      'Receive-FalconGetFile'
      'Remove-FalconCommand'
      'Remove-FalconGetFile'
      'Remove-FalconPutFile'
      'Remove-FalconScript'
      'Remove-FalconSession'
      'Send-FalconPutFile'
      'Send-FalconScript'
      'Start-FalconSession'
      'Update-FalconSession'

      # recon
      'Edit-FalconReconAction'
      'Edit-FalconReconNotification'
      'Edit-FalconReconRule'
      'Get-FalconReconAction'
      'Get-FalconReconExport'
      'Get-FalconReconNotification'
      'Get-FalconReconRecord'
      'Get-FalconReconRule'
      'Get-FalconReconRulePreview'
      'Invoke-FalconReconExport'
      'New-FalconReconAction'
      'New-FalconReconRule'
      'Receive-FalconReconExport'
      'Remove-FalconReconAction'
      'Remove-FalconReconExport'
      'Remove-FalconReconRule'
      'Remove-FalconReconNotification'

      # reports
      'Get-FalconScheduledReport'
      'Invoke-FalconScheduledReport'
      'Receive-FalconScheduledReport'
      'Redo-FalconScheduledReport'

      # samples
      'Get-FalconSample'
      'Send-FalconSample'
      'Receive-FalconSample'
      'Remove-FalconSample'

      # scanner
      'Get-FalconQuickScan'
      'Get-FalconQuickScanQuota'
      'New-FalconQuickScan'

      # sensors
      'Get-FalconCcid'
      'Get-FalconInstaller'
      'Get-FalconStream'
      'Receive-FalconInstaller'
      'Update-FalconStream'

      # settings
      'Edit-FalconHorizonPolicy'
      'Edit-FalconHorizonSchedule'
      'Get-FalconHorizonPolicy'
      'Get-FalconHorizonSchedule'

      # settings-discover
      'Get-FalconDiscoverAwsScript'

      # spotlight
      'Get-FalconRemediation'
      'Get-FalconVulnerability'
      'Get-FalconVulnerabilityLogic'

      # ti
      'Get-FalconTailoredEvent'
      'Get-FalconTailoredRule'

      # user-management
      'Add-FalconRole'
      'Edit-FalconUser'
      'Get-FalconRole'
      'Get-FalconUser'
      'Invoke-FalconUserAction'
      'New-FalconUser'
      'Remove-FalconRole'
      'Remove-FalconUser'

      # zero-trust-assessment
      'Get-FalconZta'
    )
    CmdletsToExport      = @()
    VariablesToExport    = '*'
    AliasesToExport      = @()
    PrivateData          = @{
        PSData = @{
            Tags         = @('CrowdStrike','Falcon','OAuth2','REST','API','PSEdition_Desktop','PSEdition_Core',
                'Windows','Linux','MacOS')
            LicenseUri   = 'https://raw.githubusercontent.com/CrowdStrike/psfalcon/master/LICENSE'
            ProjectUri   = 'https://github.com/crowdstrike/psfalcon'
            IconUri      = 'https://raw.githubusercontent.com/CrowdStrike/psfalcon/master/icon.png'
            ReleaseNotes = "@

# New Commands
  ### archives
  * Expand-FalconSampleArchive
  * Get-FalconSampleArchive
  * Get-FalconSampleExtraction
  * Remove-FalconSampleArchive
  * Send-FalconSampleArchive
  ### cloud-connect-aws
  * Get-FalconDiscoverAwsLink
  * Receive-FalconDiscoverAwsScript
  ### fwmgr
  * Get-FalconFirewallLocation
  * Remove-FalconFirewallLocation
  * Set-FalconFirewallLocationPrecedence
  * Test-FalconFirewallPath
  ### image-assessment
  * Get-FalconContainerVulnerability
  ### installation-tokens
  * Edit-FalconInstallTokenSetting
  ### intel
  * Get-FalconCve
  ### iocs
  * Get-FalconIocAction
  * Get-FalconIocPlatform
  * Get-FalconIocSeverity
  * Get-FalconIocType
  ### kubernetes-protection
  * Edit-FalconContainerAzureAccount
  * Get-FalconContainerAzureAccount
  * New-FalconContainerAzureAccount
  * Remove-FalconContainerAzureAccount
  ### ods
  * Get-FalconScan
  * Get-FalconScanFile
  * Get-FalconScanHost
  * Get-FalconScheduledScan
  * New-FalconScheduledScan
  * Remove-FalconScheduledScan
  * Start-FalconScan
  * Stop-FalconScan
  ### recon
  * Get-FalconReconExport
  * Get-FalconReconRecord
  * Invoke-FalconReconExport
  * Receive-FalconReconExport
  * Remove-FalconReconExport
  ### settings-discover
  * Get-FalconDiscoverAwsScript

# Issues Resolved
  * Issue #255: Added missing parameters and maximum limit of 100 'ids' per 'detailed' request.
  * Issue #256: Removed type definition when creating build tag variables. Added filter to ensure that LinuxArm64
    builds were only being checked when they were using tagged versions.
  * Issue #260: @datorr2 fixed 'ConvertTo-IoaExclusion' and 'ConvertTo-MlExclusion' generating errors about missing
    properties when detection objects were not passed via the pipeline.
  * Issue #263: Added additional property check to 'Import-FalconConfig' to prevent 'sha256' IOCs from being
    ignored and marked as 'Exists' when they didn't actually exist in the target CID.

# General Changes
  * Renamed 'mobile-enrollment.ps1' to 'enrollments.ps1' to match URL prefix.
  * Created 'Select-Property' private function for validating the presence of specific properties within
    [object[]] values. This function is used to output error messages when the proper sub-property values (or
    string values themselves) are not found in objects submitted via the pipeline.
  * Created [ApiClient]::StreamType() method to ensure that (a supported) 'type' is included when submitting a
    'file' or 'upfile' formdata payload.
  * Updated internal 'New-ShouldMessage' function to ensure that 'Formdata' payloads are displayed when using
    '-WhatIf' parameter (with some exceptions).
  * Streamlined 'Confirm-Property' internal function for validating pipeline input.
  * Added 'BodyArray' to 'Invoke-Falcon' internal function to force body payloads into a Json array when required.
  * Moved 'ShouldMessage' output during 'Invoke-Falcon' so that the body payload is shown after Json conversion
    instead of before.
  * Added warning messages to [ApiClient]::Invoke() when 'X-Api-Deprecation' header responses are detected.
  * Updated reference policy Json files for 'Compare-FalconPreventionPhase'.

# Command Changes
## Updated to use their new respective v2 API endpoints:
  * Edit-FalconFirewallSetting
  * Get-FalconCidGroup
  * Get-FalconCidGroupMember
  * Get-FalconDiscoverAwsAccount
  * Get-FalconMemberCid
  * Get-FalconUserGroup
  * Get-FalconUserGroupMember
  * Remove-FalconDiscoverAwsAccount
## Added 'HostTimeout' parameter, re-ordered positioning and updated 'Timeout' and 'HostTimeout' ranges from
  30-600 to 1-600:
  * Invoke-FalconAdminCommand
  * Invoke-FalconBatchGet
  * Invoke-FalconCommand
  * Invoke-FalconResponderCommand
  * Start-FalconSession
## Added 'FromParent' parameter:
  * Edit-FalconIoc
  * Get-FalconIoc
  * Remove-FalconIoc
## Added 'ContentFormat' and 'TriggerMatchless' parameters:
  * Edit-FalconReconAction
  * New-FalconReconAction
## Added 'BreachMonitoring' and 'SubstringMatching' parameters:
  * Edit-FalconReconRule
  * New-FalconReconRule
## Added 'State' parameter:
  * Get-FalconHorizonIoaEvent
  * Get-FalconHorizonIoaUser
## Add-FalconRole
  * Removed deprecated endpoint '/user-roles/entities/user-roles/v1:post'. This command now uses the
    '/user-management/entities/user-role-actions/v1:post' endpoint exclusively (using 'action: grant').
  * Changed parameter positions and removed pipeline support for 'Id'.
  * 'Cid' is now a required parameter due to the endpoint change. 'Cid' is included in a 'Get-FalconUser
    -Detailed' result.
## Edit-FalconCompleteCase
  * Updated 'DetectionId' and 'IncidentId' to submit as hashtables with 'id' property, rather than an array of
    string values.
## Edit-FalconFirewallGroup
  * Added 'Validate' parameter to utilize new '/fwmgr/entities/rule-groups/validation/v1:patch' endpoint.
## Edit-FalconHorizonPolicy
  * Added 'Region', 'TagExcluded' and 'AccountId' parameters.
## Edit-FalconHorizonSchedule
  * Added 'NextScanTimestamp' parameter.
## Edit-FalconIoaExclusion
  * Added 'PatternId' and 'PatternName' parameters.
  * Modified how 'Filename' is submitted to prevent potential errors.
## Find-FalconHostname
  * Added 'Partial' switch to perform non-exact matches, an idea from Reddit user 'Runs_on_empty'!
  * Added 'Include' parameter.
## Get-FalconDiscoverAwsAccount
  * Because the new v2 endpoint no longer includes them, 'Filter' and 'Sort' have been removed from available
    parameters, but 'Migrated', 'OrganizationId' and 'ScanType' have been added.
  * 'Detailed' has been removed because a single call now includes details.
## Get-FalconHorizonIoaEvent
  * Renamed 'UserIds' parameter to 'UserId' but kept 'UserIds' as an alias.
## Get-FalconHorizonSchedule
  * Changed 'CloudPlatform' to mandatory, as the API no longer returns results without specifying a value.
## Get-FalconIndicator
  * Added 'IncludeRelation' parameter.
## Get-FalconRole
  * Added error message when a user attempts to pipeline a detailed 'Get-FalconUser' result to 'Get-FalconRole'.
  * Added auto-complete for 'Id' using list of roles from authorized CID.
## Get-FalconUser
  * Added 'All' and 'Total' parameters. These were mistakenly missed in the 2.2.3 release.
  * Added maximum of 100 user ids per 'detailed' request.
## New-FalconCompleteCase
  * Updated 'DetectionId' and 'IncidentId' to submit as hashtables with 'id' property, rather than an array of
    string values.
## New-FalconDiscoverAwsAccount
  * Updated to use new '/cloud-connect-aws/entities/account/v2:post' endpoint. Parameters have changed to match
    new endpoint.
## New-FalconFirewallGroup
  * Added 'Validate' parameter to utilize new '/fwmgr/entities/rule-groups/validation/v1:post' endpoint.
  * Added 'Platform' parameter, with auto-complete using 'Get-FalconFirewallPlatform' for available values.
## New-FalconIoc
  * Modified how 'Filename' is submitted to prevent potential errors.
## New-FalconSubmission
  * Repositioned parameters and added pipeline support for 'SubmitName' and 'Sha256'.
## Remove-FalconRole
  * Removed deprecated endpoint '/user-roles/entities/user-roles/v1:delete'. This command now uses the
    '/user-management/entities/user-role-actions/v1:post' endpoint exclusively (using 'action: revoke').
  * Changed parameter positions and removed pipeline support for 'Id'.
  * 'Cid' is now a required parameter due to the endpoint change. 'Cid' is included in a 'Get-FalconUser
    -Detailed' result.
## Send-FalconSample
  * Renamed parameter 'FileName' to 'Name' to match 'Send-FalconSampleArchive' when redirecting sample
    archives. 'FileName' was retained as an alias for 'Name'.
## Start-FalconSession
  * Added 'Timeout' parameter to 'Start-FalconSession' when working with single-host sessions. 'Timeout' would
    previously force a batch session to be created even if a single host was submitted. Now that 'Timeout' also
    works for single host sessions, 'HostTimeout' or 'ExistingBatchId' must be used to force creation of a batch
    session.
@"
        }
    }
}