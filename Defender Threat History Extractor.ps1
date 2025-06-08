# Defender Threat History Extractor
# Gets past threat detections and exports to CSV

$Threats = Get-MpThreatDetection

if ($Threats) {
    $OutputPath = "$env:USERPROFILE\Documents\DefenderThreatHistory.csv"
    $Threats | Select-Object ThreatName, ActionSuccess, InitialDetectionTime, Resources, SeverityId, Category | Export-Csv -Path $OutputPath -NoTypeInformation
    Write-Output "Threat history exported to: $OutputPath"
} else {
    Write-Output "No Defender threats found in history."
}