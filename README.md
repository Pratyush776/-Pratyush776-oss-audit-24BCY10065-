# oss-audit-24BCY10065

**Student:** Pratyush
**Registration Number:** 24BCY10065
**Course:** Open Source Software
**Chosen Software:** Git

## About This Project

This repository contains the shell scripts for the Open Source Audit
capstone project. The chosen software for audit is Git, a distributed
version control system created by Linus Torvalds in 2005 and released
under the GNU GPL v2 license.

## Scripts

| Script | Purpose |
|--------|---------|
| script1.sh | System Identity Report - displays kernel, user, uptime, date and license info |
| script2.sh | FOSS Package Inspector - checks if git is installed and prints version and philosophy note |
| script3.sh | Disk and Permission Auditor - loops through key directories and reports size and permissions |
| script4.sh | Log File Analyzer - reads a log file and counts keyword occurrences |
| script5.sh | Manifesto Generator - asks 3 questions and generates a personal open source philosophy statement |

## How to Run

### Step 1 - Make all scripts executable
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh

### Step 2 - Run each script

Run Script 1:
./script1.sh

Run Script 2:
./script2.sh

Run Script 3:
./script3.sh

Run Script 4 (needs a log file and keyword as arguments):
./script4.sh /var/log/dpkg.log install

Run Script 5:
./script5.sh

## Dependencies

- bash (pre-installed on all Linux systems)
- git (sudo apt install git)
- Standard Linux utilities: grep, awk, du, ls, date, uname, whoami

## System Requirements

- Ubuntu 20.04 or higher (tested on Ubuntu 24.04.2 LTS)
- WSL2 or native Linux environment
- Bash version 5.0 or higher

## License

This project is submitted as part of the Open Source Software course
at VIT. All shell scripts are original work by Pratyush (24BCY10065).