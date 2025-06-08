# Defender Threat History Extractor

This PowerShell script extracts the threat detection history from Windows Defender and exports it to a structured CSV file. It provides visibility into past threats, actions taken, detection timestamps, severity levels, and affected resources — key for incident response and forensic analysis.

---

## 🔍 How It Works

The script uses `Get-MpThreatDetection`, a built-in Windows Defender command, to retrieve past threat data. If detections exist, they are formatted and exported to a CSV file located in the user's Documents folder.

### Script Output:
- **ThreatName** – Name of the detected threat
- **ActionSuccess** – Whether remediation was successful
- **InitialDetectionTime** – Timestamp of first detection
- **Resources** – Files or locations affected
- **SeverityId** – Risk severity level
- **Category** – Type of threat (e.g., spyware, trojan)

---

## 🛠️ Tools & Skills Demonstrated

- PowerShell scripting
- Windows Defender command-line usage
- CSV export and log formatting
- Endpoint visibility and threat detection
- SOC incident response readiness

---

## ✅ How to Run

1. Open **PowerShell as Administrator**
2. Run the script:
   ```powershell
   .\DefenderThreatHistoryExtractor.ps1
 3.	If threats exist, the report will be saved to:
    C:\Users\YourName\Documents\DefenderThreatHistory.csv

4. If no threats are found, you’ll receive a clean status message.
<pre>
## 📂 Sample Output (CSV)

| ThreatName           | ActionSuccess | InitialDetectionTime   | Resources                  | SeverityId | Category     |
|----------------------|---------------|-------------------------|----------------------------|------------|--------------|
| Trojan:Win32/Emotet  | True          | 2025-06-01T10:12:35Z    | C:\Users\Public\doc.exe    | 5          | Trojan       |
</pre>


   Use Case

Ideal for SOC analysts, blue teamers, and incident responders needing to:
	•	Validate past detections
	•	Document malware activity
	•	Investigate failed remediations
	•	Monitor endpoint health over time

⸻

📎 Related Projects
	•	Suspicious Logon Monitor
	•	Suspicious Connections Scanner
	•	Firewall Rule Audit Script

⸻

👩🏾‍💻 Created with purpose by @mary-cybersec
