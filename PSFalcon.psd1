@{
  RootModule           = 'PSFalcon.psm1'
  ModuleVersion        = '2.1.3'
  CompatiblePSEditions = @('Desktop','Core')
  GUID                 = 'd893eb9f-f6bb-4a40-9caf-aaff0e42acd1'
  Author               = 'Brendan Kremian'
  CompanyName          = 'CrowdStrike'
  Copyright            = '(c) CrowdStrike. All rights reserved.'
  Description          = 'PowerShell for the CrowdStrike Falcon OAuth2 APIs'
  HelpInfoURI          = 'https://bk-cs.github.io/help/psfalcon/en-US'
  PowerShellVersion    = '5.1'
  RequiredAssemblies   = @('System.Net.Http')
  ScriptsToProcess     = @('Class/Class.ps1')
  FunctionsToExport    = @(
    # cloud-connect-aws.ps1
    'Confirm-FalconDiscoverAwsAccess',
    'Edit-FalconDiscoverAwsAccount',
    'Get-FalconDiscoverAwsAccount',
    'Get-FalconDiscoverAwsSetting',
    'New-FalconDiscoverAwsAccount',
    'Remove-FalconDiscoverAwsAccount',
    'Update-FalconDiscoverAwsSetting',

    # cspm-registration.ps1
    'Edit-FalconHorizonAwsAccount',
    'Edit-FalconHorizonAzureAccount',
    'Edit-FalconHorizonPolicy',
    'Edit-FalconHorizonSchedule',
    'Get-FalconHorizonAwsAccount',
    'Get-FalconHorizonAwsLink',
    'Get-FalconHorizonAzureAccount',
    'Get-FalconHorizonIoaEvent',
    'Get-FalconHorizonIoaUser',
    'Get-FalconHorizonPolicy',
    'Get-FalconHorizonSchedule',
    'New-FalconHorizonAwsAccount',
    'New-FalconHorizonAzureAccount',
    'Receive-FalconHorizonAwsScript',
    'Receive-FalconHorizonAzureScript',
    'Remove-FalconHorizonAwsAccount',
    'Remove-FalconHorizonAzureAccount',

    # custom-ioa.ps1
    'Edit-FalconIoaGroup',
    'Edit-FalconIoaRule',
    'Get-FalconIoaGroup',
    'Get-FalconIoaPlatform',
    'Get-FalconIoaRule',
    'Get-FalconIoaSeverity',
    'Get-FalconIoaType',
    'New-FalconIoaGroup',
    'New-FalconIoaRule',
    'Remove-FalconIoaGroup',
    'Remove-FalconIoaRule',
    'Test-FalconIoaRule',

    # d4c-registration.ps1
    'Get-FalconDiscoverAzureAccount',
    'Get-FalconDiscoverGcpAccount',
    'New-FalconDiscoverAzureAccount',
    'New-FalconDiscoverGcpAccount',
    'Receive-FalconDiscoverAzureScript',
    'Receive-FalconDiscoverGcpScript',
    'Update-FalconDiscoverAzureAccount',

    # detects.ps1
    'Edit-FalconDetection',
    'Get-FalconDetection',

    # device-control-policies.ps1
    'Edit-FalconDeviceControlPolicy',
    'Get-FalconDeviceControlPolicy',
    'Get-FalconDeviceControlPolicyMember',
    'Invoke-FalconDeviceControlPolicyAction',
    'New-FalconDeviceControlPolicy',
    'Remove-FalconDeviceControlPolicy',
    'Set-FalconDeviceControlPrecedence',

    # devices.ps1
    'Add-FalconHostTag',
    'Get-FalconHost',
    'Invoke-FalconHostAction',
    'Remove-FalconHostTag',

    # falcon-container.ps1
    'Get-FalconContainerToken',

    # falconcomplete-dashboard.ps1
    'Get-FalconCompleteAllowlist',
    'Get-FalconCompleteBlocklist',
    'Get-FalconCompleteCollection',
    'Get-FalconCompleteDetection',
    'Get-FalconCompleteEscalation',
    'Get-FalconCompleteIncident',
    'Get-FalconCompleteRemediation',

    # falconx-actors.ps1
    'Get-FalconActor',

    # falconx-indicators.ps1
    'Get-FalconIndicator',

    # falconx-reports.ps1
    'Get-FalconIntel',
    'Receive-FalconIntel',

    # falconx-rules.ps1
    'Get-FalconRule',
    'Receive-FalconRule',

    # falconx-sandbox.ps1
    'Get-FalconReport',
    'Get-FalconSubmission',
    'Get-FalconSubmissionQuota',
    'New-FalconSubmission',
    'Receive-FalconArtifact',
    'Remove-FalconReport',

    # firewall-management.ps1
    'Edit-FalconFirewallGroup',
    'Edit-FalconFirewallPolicy',
    'Edit-FalconFirewallSetting',
    'Get-FalconFirewallEvent',
    'Get-FalconFirewallField',
    'Get-FalconFirewallGroup',
    'Get-FalconFirewallPlatform',
    'Get-FalconFirewallPolicy',
    'Get-FalconFirewallPolicyMember',
    'Get-FalconFirewallRule',
    'Get-FalconFirewallSetting',
    'Invoke-FalconFirewallPolicyAction',
    'New-FalconFirewallGroup',
    'New-FalconFirewallPolicy',
    'Remove-FalconFirewallGroup',
    'Remove-FalconFirewallPolicy',
    'Set-FalconFirewallPrecedence',

    # host-group.ps1
    'Edit-FalconHostGroup',
    'Get-FalconHostGroup',
    'Get-FalconHostGroupMember',
    'Invoke-FalconHostGroupAction',
    'New-FalconHostGroup',
    'Remove-FalconHostGroup',

    # incidents.ps1
    'Get-FalconBehavior',
    'Get-FalconIncident',
    'Get-FalconScore',
    'Invoke-FalconIncidentAction',

    # installation-tokens.ps1
    'Edit-FalconInstallToken',
    'Get-FalconInstallToken',
    'Get-FalconInstallTokenEvent',
    'Get-FalconInstallTokenSetting',
    'New-FalconInstallToken',
    'Remove-FalconInstallToken',

    # ioc.ps1
    'Edit-FalconIoc',
    'Get-FalconIoc',
    'New-FalconIoc',
    'Remove-FalconIoc',

    # iocs.ps1
    'Get-FalconIocHost',
    'Get-FalconIocProcess',

    # kubernetes-protection.ps1
    'Edit-FalconContainerAwsAccount',
    'Get-FalconContainerAwsAccount',
    'Get-FalconContainerCloud',
    'Get-FalconContainerCluster',
    'Invoke-FalconContainerScan',
    'New-FalconContainerAwsAccount',
    'New-FalconContainerKey',
    'Receive-FalconContainerYaml',
    'Remove-FalconContainerAwsAccount',

    # malquery.ps1
    'Get-FalconMalQuery',
    'Get-FalconMalQueryQuota',
    'Get-FalconMalQuerySample',
    'Group-FalconMalQuerySample',
    'Invoke-FalconMalQuery',
    'Receive-FalconMalQuerySample',
    'Search-FalconMalQueryHash',

    # ml-exclusions.ps1
    'Edit-FalconMlExclusion',
    'Get-FalconMlExclusion',
    'New-FalconMlExclusion',
    'Remove-FalconMlExclusion',

    # mssp.ps1
    'Add-FalconCidGroupMember',
    'Add-FalconGroupRole',
    'Add-FalconUserGroupMember',
    'Edit-FalconCidGroup',
    'Edit-FalconUserGroup',
    'Get-FalconCidGroup',
    'Get-FalconCidGroupMember',
    'Get-FalconGroupRole',
    'Get-FalconMemberCid',
    'Get-FalconUserGroup',
    'Get-FalconUserGroupMember',
    'New-FalconCidGroup',
    'New-FalconUserGroup',
    'Remove-FalconCidGroup',
    'Remove-FalconCidGroupMember',
    'Remove-FalconGroupRole',
    'Remove-FalconUserGroup',
    'Remove-FalconUserGroupMember',

    # oauth2.ps1
    'Request-FalconToken',
    'Revoke-FalconToken',
    'Test-FalconToken',

    # overwatch-dashboard.ps1
    'Get-FalconOverWatchEvent',
    'Get-FalconOverWatchDetection',
    'Get-FalconOverWatchIncident',

    # prevention-policies.ps1
    'Edit-FalconPreventionPolicy',
    'Get-FalconPreventionPolicy',
    'Get-FalconPreventionPolicyMember',
    'Invoke-FalconPreventionPolicyAction',
    'New-FalconPreventionPolicy',
    'Remove-FalconPreventionPolicy',
    'Set-FalconPreventionPrecedence',

    # psfalcon.psd1
    'Export-FalconConfig',
    'Export-FalconReport',
    'Find-FalconDuplicate',
    'Get-FalconQueue',
    'Import-FalconConfig',
    'Invoke-FalconDeploy',
    'Invoke-FalconRtr',
    'Send-FalconWebhook',
    'Show-FalconMap',
    'Show-FalconModule',
    'Uninstall-FalconSensor',

    # quick-scan.ps1
    'Get-FalconQuickScan',
    'Get-FalconQuickScanQuota',
    'New-FalconQuickScan',

    # real-time-response-admin.ps1
    'Confirm-FalconAdminCommand',
    'Edit-FalconScript',
    'Get-FalconPutFile',
    'Get-FalconScript',
    'Invoke-FalconAdminCommand',
    'Remove-FalconPutFile',
    'Remove-FalconScript',
    'Send-FalconPutFile',
    'Send-FalconScript',

    # real-time-response.ps1
    'Confirm-FalconCommand',
    'Confirm-FalconGetFile',
    'Confirm-FalconResponderCommand',
    'Get-FalconSession',
    'Invoke-FalconBatchGet',
    'Invoke-FalconCommand',
    'Invoke-FalconResponderCommand',
    'Receive-FalconGetFile',
    'Remove-FalconCommand',
    'Remove-FalconGetFile',
    'Remove-FalconSession',
    'Start-FalconSession',
    'Update-FalconSession',

    # recon-monitoring-rules.ps1
    'Edit-FalconReconAction',
    'Edit-FalconReconNotification',
    'Edit-FalconReconRule',
    'Get-FalconReconAction',
    'Get-FalconReconNotification',
    'Get-FalconReconRule',
    'Get-FalconReconRulePreview',
    'New-FalconReconAction',
    'New-FalconReconRule',
    'Remove-FalconReconAction',
    'Remove-FalconReconRule',
    'Remove-FalconReconNotification',

    # response-policies.ps1
    'Edit-FalconResponsePolicy',
    'Get-FalconResponsePolicy',
    'Get-FalconResponsePolicyMember'
    'Invoke-FalconResponsePolicyAction',
    'New-FalconResponsePolicy',
    'Remove-FalconResponsePolicy',
    'Set-FalconResponsePrecedence',

    # samplestore.ps1
    'Get-FalconSample',
    'Send-FalconSample',
    'Receive-FalconSample',
    'Remove-FalconSample',

    # self-service-ioa-exclusions.ps1
    'Edit-FalconIoaExclusion',
    'Get-FalconIoaExclusion',
    'New-FalconIoaExclusion',
    'Remove-FalconIoaExclusion',

    # sensor-installers.ps1
    'Get-FalconCcid',
    'Get-FalconInstaller',
    'Receive-FalconInstaller',

    # sensor-update-policies.ps1
    'Edit-FalconSensorUpdatePolicy',
    'Get-FalconBuild',
    'Get-FalconSensorUpdatePolicy',
    'Get-FalconSensorUpdatePolicyMember',
    'Get-FalconUninstallToken',
    'Invoke-FalconSensorUpdatePolicyAction',
    'New-FalconSensorUpdatePolicy',
    'Remove-FalconSensorUpdatePolicy',
    'Set-FalconSensorUpdatePrecedence',

    # sensor-visibility-exclusions.ps1
    'Edit-FalconSvExclusion',
    'Get-FalconSvExclusion',
    'New-FalconSvExclusion',
    'Remove-FalconSvExclusion',

    # scheduled-report.ps1
    'Get-FalconScheduledReport',
    'Receive-FalconScheduledReport',

    # spotlight-vulnerabilities.ps1
    'Get-FalconRemediation',
    'Get-FalconVulnerability',

    # streaming.ps1
    'Get-FalconStream',
    'Update-FalconStream',

    # usermgmt.ps1
    'Add-FalconRole',
    'Edit-FalconUser',
    'Get-FalconRole',
    'Get-FalconUser',
    'New-FalconUser',
    'Remove-FalconRole',
    'Remove-FalconUser',

    # zero-trust-assessment.ps1
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
          ReleaseNotes = @"
New Commands
  * psfalcon
    'Uninstall-FalconSensor'

Command Changes
  * Invoke-FalconRtr
    Fixed typo which prevented 'host_group_id' from showing up on output when using '-GroupId'.

    Added error message to prevent the use of a '-GroupId' with more than 10,000 members (as the API won't
    return more than 10,000).

  * Invoke-FalconDeploy
    Added error message to prevent the use of a '-GroupId' with more than 10,000 members (as the API won't
    return more than 10,000).

GitHub Issues
  * Issue #70, #71: Updated the 'Depth' value of 'ConvertTo-Json' throughout module.
  * Issue #73: Fixed the grouping of ids for 'Invoke-FalconHostAction'.
"@
      }
  }
}