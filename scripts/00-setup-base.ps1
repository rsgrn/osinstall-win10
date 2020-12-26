
Import-Module -Name "$PSScriptRoot\..\w10-setup-script\Win10"


# Privacy

DisableActivityHistory
DisableAdvertisingID
DisableAppSuggestions
DisableUWPBackgroundApps        # EnableUWPBackgroundApps
DisableUWPVoiceActivation
DisableBiometrics               # EnableBiometrics
DisableCortana
DisableDiagTrack
DisableErrorReporting
DisableFeedback
DisableLocation                 # EnableLocation
DisableMapUpdates
DisableRecentFiles
DisableSensors                  # EnableSensors
DisableSmartScreen
DisableTailoredExperiences
DisableTelemetry
DisableWAPPush
DisableWebLangList           
DisableWebSearch
DisableWiFiSense
EnableClearRecentFiles
SetP2PUpdateLocal





# Security

DisableAdminShares
# DisableCIMemoryIntegrity
# DisableDefender               # EnableDefender
# DisableCtrldFolderAccess      # EnableCtrldFolderAccess
DisableDefenderAppGuard         # EnableDefenderAppGuard     
DisableDefenderCloud            # EnableDefenderCloud
DisableDownloadBlocking
# DisableFirewall               # EnableFirewall
DisableScriptHost               # EnableScriptHost
DisableSharingMappedDrives
HideAccountProtectionWarn
HideDefenderTrayIcon
EnableDotNetStrongCrypto        # DisableDotNetStrongCrypto
# SetUACLow                     # SetUACHigh
# EnableMeltdownCompatFlag      # DisableMeltdownCompatFlag
EnableF8BootMenu                # DisableF8BootMenu
# DisableBootRecovery           # EnableBootRecovery
# DisableRecoveryAndReset       # EnableRecoveryAndReset
# SetDEPOptIn                   # SetDEPOptOut                    


# Network

DisableConnectionSharing      # EnableConnectionSharing
DisableHomeGroups             # EnableHomeGroups
DisableLLDP                   # EnableLLDP
DisableLLMNR                  # EnableLLMNR
DisableLLTD                   # EnableLLTD
DisableMSNetClient            # EnableMSNetClient
DisableNCSIProbe
DisableNetBIOS                # EnableNetBIOS
DisableNetDevicesAutoInst     # EnableNetDevicesAutoInst
DisableQoS                    # EnableQoS
# DisableIPv4                 # EnableIPv4
# DisableIPv6                 # EnableIPv6
EnableRemoteDesktop           # DisableRemoteDesktop
DisableRemoteAssistance       # EnableRemoteAssistance
DisableSMB1                   # EnableSMB1
# DisableSMBServer            # EnableSMBServer
SetCurrentNetworkPrivate      # SetCurrentNetworkPublic
SetUnknownNetworksPrivate     # SetUnknownNetworksPublic


# Services

DisableAutoplay                 # EnableAutoplay
DisableAutorun                  # EnableAutorun
DisableAutoRestartSignOn        # EnableAutoRestartSignOn
DisableClipboardHistory         # EnableClipboardHistory
DisableDefragmentation          # EnableDefragmentation
DisableFastStartup              # EnableFastStartup
DisableHibernation              # EnableHibernation
DisableIndexing                 # EnableIndexing
DisableMaintenanceWakeUp        # EnableMaintenanceWakeUp
DisableNTFSLastAccess           # EnableNTFSLastAccess
DisableRecycleBin               # EnableRecycleBin
DisableSharedExperiences        # EnableSharedExperiences
# DisableSleepButton            # EnableSleepButton
# DisableSleepTimeout           # EnableSleepTimeout
DisableStorageSense             # EnableStorageSense 
DisableSuperfetch               # EnableSuperfetch
# DisableSwapFile               # EnableSwapFile
DisableUpdateAutoDownload       # EnableUpdateAutoDownload
DisableUpdateDriver             # EnableUpdateDriver
DisableUpdateMSRT               # EnableUpdateMSRT
EnableUpdateRestart            # EnableUpdateRestart

EnableNTFSLongPaths             # DisableNTFSLongPaths
DisableNTFSLastAccess
EnableUpdateMSProducts          # DisableUpdateMSProducts
SetBIOSTimeUTC

DisableRestorePoints            # EnableRestorePoints
vssadmin Delete Shadows /For=$env:SYSTEMDRIVE /Quiet

Write-Output "Setting display and sleep mode timeouts..."
powercfg /X monitor-timeout-ac 30
powercfg /X monitor-timeout-dc 10
powercfg /X standby-timeout-ac 0
powercfg /X standby-timeout-dc 360


# UI Tweaks

DisableF1HelpKey                # EnableF1HelpKey
DisableAccessibilityKeys        # EnableAccessibilityKeys
DisableActionCenter             # EnableActionCenter
DisableAeroShake                # EnableAeroShake
DisableChangingSoundScheme      # EnableChangingSoundScheme
# DisableLockScreen             # EnableLockScreen
# DisableLockScreenRS1          # EnableLockScreenRS1
DisableLockScreenBlur           # EnableLockScreenBlur
DisableNewAppPrompt             # EnableNewAppPrompt
DisableSearchAppInStore         # EnableSearchAppInStore
DisableShortcutInName           # EnableShortcutInName
DisableStartupSound             # EnableStartupSound
EnableTitleBarColor             # DisableTitleBarColor      

EnableEnhPointerPrecision       # DisableEnhPointerPrecision 

HideMostUsedApps                # ShowMostUsedApps
HideNetworkFromLockScreen       # ShowNetworkOnLockScreen
HideRecentlyAddedApps           # ShowRecentlyAddedApps
# HideShortcutArrow               # ShowShortcutArrow
# HideShutdownFromLockScreen    # ShowShutdownOnLockScreen
HideTaskbarSearch               # ShowTaskbarSearchIcon         # ShowTaskbarSearchBox
HideTaskbarPeopleIcon           # ShowTaskbarPeopleIcon

ShowFileOperationsDetails       # HideFileOperationsDetails
ShowTaskManagerDetails          # HideTaskManagerDetails
ShowTrayIcons                   # HideTrayIcons
# ShowSecondsInTaskbar          # HideSecondsFromTaskbar
ShowSmallTaskbarIcons           # ShowLargeTaskbarIcons

EnableFileDeleteConfirm         # DisableFileDeleteConfirm
# EnableNumlock                 # DisableNumlock
# EnableVerboseStatus           # DisableVerboseStatus

# SetControlPanelSmallIcons     # SetControlPanelLargeIcons     # SetControlPanelCategories
SetSoundSchemeNone              # SetSoundSchemeDefault
# SetTaskbarCombineWhenFull     # SetTaskbarCombineNever        # SetTaskbarCombineAlways

SetSystemDarkMode
SetAppsLightMode 
# SetVisualFXPerformance          # SetVisualFXAppearance

# Explorer UI

# ShowExplorerTitleFullPath     # HideExplorerTitleFullPath
ShowKnownExtensions             # HideKnownExtensions
ShowHiddenFiles                 # HideHiddenFiles
# ShowSuperHiddenFiles          # HideSuperHiddenFiles
ShowEmptyDrives               # HideEmptyDrives
# ShowFolderMergeConflicts      # HideFolderMergeConflicts
EnableNavPaneExpand             # DisableNavPaneExpand
HideNavPaneAllFolders           # ShowNavPaneAllFolders 
HideNavPaneLibraries
# EnableFldrSeparateProcess     # DisableFldrSeparateProcess
# EnableRestoreFldrWindows      # DisableRestoreFldrWindows
# ShowEncCompFilesColor         # HideEncCompFilesColor
DisableSharingWizard            # EnableSharingWizard
# HideSelectCheckboxes          # ShowSelectCheckboxes
HideSyncNotifications           # ShowSyncNotifications
HideRecentShortcuts             # ShowRecentShortcuts
SetExplorerThisPC               # SetExplorerQuickAccess
HideQuickAccess                 # ShowQuickAccess
HideRecycleBinFromDesktop       # ShowRecycleBinOnDesktop
HideThisPCFromDesktop           # ShowThisPCOnDesktop             
HideUserFolderFromDesktop       # ShowUserFolderOnDesktop
HideControlPanelFromDesktop     # ShowControlPanelOnDesktop
HideNetworkFromDesktop          # ShowNetworkOnDesktop 
# ShowBuildNumberOnDesktop      # HideBuildNumberFromDesktop
HideDesktopFromThisPC           # ShowDesktopInThisPC
HideDesktopFromExplorer       # ShowDesktopInExplorer
HideDocumentsFromThisPC         # ShowDocumentsInThisPC
HideDocumentsFromExplorer       # ShowDocumentsInExplorer
HideDownloadsFromThisPC         # ShowDownloadsInThisPC
HideDownloadsFromExplorer       # ShowDownloadsInExplorer
HideMusicFromThisPC             # ShowMusicInThisPC
HideMusicFromExplorer           # ShowMusicInExplorer
HidePicturesFromThisPC          # ShowPicturesInThisPC
HidePicturesFromExplorer        # ShowPicturesInExplorer
HideVideosFromThisPC            # ShowVideosInThisPC
HideVideosFromExplorer          # ShowVideosInExplorer
Hide3DObjectsFromThisPC         # Show3DObjectsInThisPC
Hide3DObjectsFromExplorer       # Show3DObjectsInExplorer
HideIncludeInLibraryMenu        # ShowIncludeInLibraryMenu
HideGiveAccessToMenu            # ShowGiveAccessToMenu
HideShareMenu                   # ShowShareMenu
# DisableThumbnails             # EnableThumbnails
DisableThumbnailCache           # EnableThumbnailCache
DisableThumbsDBOnNetwork        # EnableThumbsDBOnNetwork


# Application Tweaks

DisableOneDrive                 # EnableOneDrive
UninstallOneDrive               # InstallOneDrive

## UninstallMsftBloat              # InstallMsftBloat
Write-Output "Uninstalling default Microsoft applications..."
Get-AppxPackage "Microsoft.3DBuilder" | Remove-AppxPackage
Get-AppxPackage "Microsoft.AppConnector" | Remove-AppxPackage
Get-AppxPackage "Microsoft.BingFinance" | Remove-AppxPackage
Get-AppxPackage "Microsoft.BingFoodAndDrink" | Remove-AppxPackage
Get-AppxPackage "Microsoft.BingHealthAndFitness" | Remove-AppxPackage
Get-AppxPackage "Microsoft.BingMaps" | Remove-AppxPackage
Get-AppxPackage "Microsoft.BingNews" | Remove-AppxPackage
Get-AppxPackage "Microsoft.BingSports" | Remove-AppxPackage
Get-AppxPackage "Microsoft.BingTranslator" | Remove-AppxPackage
Get-AppxPackage "Microsoft.BingTravel" | Remove-AppxPackage
Get-AppxPackage "Microsoft.BingWeather" | Remove-AppxPackage
Get-AppxPackage "Microsoft.CommsPhone" | Remove-AppxPackage
Get-AppxPackage "Microsoft.ConnectivityStore" | Remove-AppxPackage
Get-AppxPackage "Microsoft.FreshPaint" | Remove-AppxPackage
Get-AppxPackage "Microsoft.GetHelp" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Getstarted" | Remove-AppxPackage
Get-AppxPackage "Microsoft.HelpAndTips" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Media.PlayReadyClient.2" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Messaging" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Microsoft3DViewer" | Remove-AppxPackage
Get-AppxPackage "Microsoft.MicrosoftOfficeHub" | Remove-AppxPackage
Get-AppxPackage "Microsoft.MicrosoftPowerBIForWindows" | Remove-AppxPackage
Get-AppxPackage "Microsoft.MicrosoftSolitaireCollection" | Remove-AppxPackage
Get-AppxPackage "Microsoft.MicrosoftStickyNotes" | Remove-AppxPackage
Get-AppxPackage "Microsoft.MinecraftUWP" | Remove-AppxPackage
Get-AppxPackage "Microsoft.MixedReality.Portal" | Remove-AppxPackage
Get-AppxPackage "Microsoft.MoCamera" | Remove-AppxPackage
# Get-AppxPackage "Microsoft.MSPaint" | Remove-AppxPackage
Get-AppxPackage "Microsoft.NetworkSpeedTest" | Remove-AppxPackage
Get-AppxPackage "Microsoft.OfficeLens" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Office.OneNote" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Office.Sway" | Remove-AppxPackage
Get-AppxPackage "Microsoft.OneConnect" | Remove-AppxPackage
Get-AppxPackage "Microsoft.People" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Print3D" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Reader" | Remove-AppxPackage
# Get-AppxPackage "Microsoft.RemoteDesktop" | Remove-AppxPackage
Get-AppxPackage "Microsoft.SkypeApp" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Todos" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Wallet" | Remove-AppxPackage
Get-AppxPackage "Microsoft.WebMediaExtensions" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Whiteboard" | Remove-AppxPackage
Get-AppxPackage "Microsoft.WindowsAlarms" | Remove-AppxPackage
# Get-AppxPackage "Microsoft.WindowsCamera" | Remove-AppxPackage
Get-AppxPackage "microsoft.windowscommunicationsapps" | Remove-AppxPackage
Get-AppxPackage "Microsoft.WindowsFeedbackHub" | Remove-AppxPackage
Get-AppxPackage "Microsoft.WindowsMaps" | Remove-AppxPackage
Get-AppxPackage "Microsoft.WindowsPhone" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Windows.Photos" | Remove-AppxPackage
Get-AppxPackage "Microsoft.WindowsReadingList" | Remove-AppxPackage
Get-AppxPackage "Microsoft.WindowsScan" | Remove-AppxPackage
Get-AppxPackage "Microsoft.WindowsSoundRecorder" | Remove-AppxPackage
Get-AppxPackage "Microsoft.WinJS.1.0" | Remove-AppxPackage
Get-AppxPackage "Microsoft.WinJS.2.0" | Remove-AppxPackage
Get-AppxPackage "Microsoft.YourPhone" | Remove-AppxPackage
Get-AppxPackage "Microsoft.ZuneMusic" | Remove-AppxPackage
Get-AppxPackage "Microsoft.ZuneVideo" | Remove-AppxPackage
Get-AppxPackage "Microsoft.Advertising.Xaml" | Remove-AppxPackage # Dependency for microsoft.windowscommunicationsapps, Microsoft.BingWeather

UninstallThirdPartyBloat        # InstallThirdPartyBloat
# UninstallWindowsStore         # InstallWindowsStore
DisableXboxFeatures             # EnableXboxFeatures
# DisableFullscreenOptims       # EnableFullscreenOptims
DisableAdobeFlash               # EnableAdobeFlash
DisableEdgePreload              # EnableEdgePreload
DisableEdgeShortcutCreation     # EnableEdgeShortcutCreation
DisableIEFirstRun               # EnableIEFirstRun
DisableFirstLogonAnimation      # EnableFirstLogonAnimation
DisableMediaSharing             # EnableMediaSharing
DisableMediaOnlineAccess
UninstallHelloFace
UninstallMathRecognizer
EnableDeveloperMode             # DisableDeveloperMode
UninstallMediaPlayer            # InstallMediaPlayer
UninstallInternetExplorer       # InstallInternetExplorer
UninstallWorkFolders            # InstallWorkFolders
UninstallPowerShellV2           # InstallPowerShellV2
InstallHyperV                   # UninstallHyperV
InstallLinuxSubsystem           # UninstallLinuxSubsystem
InstallSSHClient                # UninstallSSHClient       
InstallTelnetClient       
# InstallSSHServer              # UninstallSSHServer
# InstallNET23                  # UninstallNET23
SetPhotoViewerAssociation       # UnsetPhotoViewerAssociation
AddPhotoViewerOpenWith          # RemovePhotoViewerOpenWith
UninstallPDFPrinter             # InstallPDFPrinter
UninstallXPSPrinter             # InstallXPSPrinter
RemoveFaxPrinter                # AddFaxPrinter
UninstallFaxAndScan             # InstallFaxAndScan


# Make the "HKCR:" registry drive available.
If (!(Test-Path "HKCR:")) {
  New-PSDrive -Name HKCR -PSProvider Registry -Root HKEY_CLASSES_ROOT | Out-Null
}

Write-Output 'Removing "Edit with Paint 3D" from Explorer context menu.'
# reg query "HKLM\SOFTWARE\Classes\SystemFileAssociations" /f "3D Edit" /s /k /e
("3mf", "bmp", "fbx", "gif", "glb", "jfif", "jpe", "jpeg", "jpg", "obj", "ply", "png", "stl", "tif", "tiff") | ForEach {
  Remove-Item -Path "HKLM:\Software\Classes\SystemFileAssociations\.$_\Shell\3D Edit" -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
}

Write-Output 'Removeing "Set as desktop background" from Explorer context menu.'
# reg query "HKLM\SOFTWARE\Classes\SystemFileAssociations" /f "setdesktopwallpaper" /s /k /e
("bmp", "dib", "gif", "jfif", "jpe", "jpeg", "jpg", "png", "tif", "tiff", "wdp") | ForEach {
  Remove-Item -Path "HKLM:\Software\Classes\SystemFileAssociations\.$_\Shell\setdesktopwallpaper" -Recurse -ErrorAction SilentlyContinue -Force | Out-Null
}

Write-Output "Uninstalling Microsoft Internet Printing..."
Disable-WindowsOptionalFeature -Online -FeatureName "Printing-Foundation-InternetPrinting-Client" -NoRestart -WarningAction SilentlyContinue | Out-Null

### Unpinning ###
UnpinStartMenuTiles
UnpinTaskbarIcons

### Auxiliary Functions ###
WaitForKey
Restart













# SetBIOSTimeUTC                # SetBIOSTimeLocal



# DisableAutoRebootOnCrash      # EnableAutoRebootOnCrash