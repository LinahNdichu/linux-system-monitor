# Linux IT Support Project 2 – System Health & Log Monitoring

## 📌 Overview
This project simulates an IT Support task: monitoring system performance and tracking security logs on a Linux server.  
It demonstrates automation with Bash scripts and cron jobs to ensure system health and security are regularly checked.


## 🔧 Features
- **System Health Monitoring**  
  - Uptime  
  - Memory usage  
  - Disk usage  
  - Top 5 CPU & Memory consuming processes  

- **Log Monitoring**  
  - Detects failed login attempts from `/var/log/auth.log`  
  - Keeps a record for security analysis  

- **Automation**  
  - Runs daily with cron jobs  
  - Saves reports into log files  
## 📂 Project Structure
linux-system-monitor/
│── health.sh # Script to check uptime, memory, disk, and processes
│── log_monitor.sh # Script to scan auth logs for failed logins
│── health.log # Sample output of daily system health
│── security.log # Sample output of log monitoring
│── README.md # Project documentation
## 🚀 How to Run
1. Clone repo:
   ```bash
   git clone git@github.com:LinahNdichu/linux-system-monitor.git
   cd linux-system-monitor
 2. Make the scripts executable:
chmod +x system_health.sh log_monitor.sh

 3. Run system health monitoring:
./system_health.sh

 4. Run log monitoring:
./log_monitor.sh

 5. Automate with cron job:
crontab -e
Add this line to run daily at midnight:
0 0 * * * /path/to/system_health.sh >> daily_report.log
0 0 * * * /path/to/log_monitor.sh >> daily_report.log

📊 Sample Output
===== System Health Report: Tue Sep  9 09:16:49 EAT 2025 =====

Uptime:
 09:16:49 up 10 min,  0 users,  load average: 0.52, 0.58, 0.59
Memory Usage:
               total        used        free      shared  buff/cache   available
Mem:           7.9Gi       3.7Gi       3.9Gi        17Mi       223Mi       4.0Gi
Swap:           24Gi       356Mi        23Gi

Disk Usage:

Top 5 Processes by CPU:
  PID  PPID CMD                         %MEM %CPU
    1     0 /init                        0.0  0.0
    8     1 /init                        0.0  0.0
    9     8 -bash                        0.0  0.0
   64     9 /bin/bash ./health.sh        0.0  0.0
   70    64 ps -eo pid,ppid,cmd,%mem,%c  0.0  0.0

Top 5 Processes by Memory:
  PID  PPID CMD                         %MEM %CPU
    8     1 /init                        0.0  0.0
    1     0 /init                        0.0  0.0
   73    64 head -n 6                    0.0  0.0
   72    64 ps -eo pid,ppid,cmd,%mem,%c  0.0  0.0
   64     9 /bin/bash ./health.sh        0.0  0.0

 ✅ Skills Demonstrated

Linux system administration basics

User and log monitoring

Bash scripting

Automation with cron

Git & GitHub project documentation
