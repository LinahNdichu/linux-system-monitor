#!/bin/bash
echo "===== System Health Report: $(date) ====="
echo
echo "Uptime:"
uptime
echo "Memory Usage:"
free -h
echo
echo "Disk Usage:"
df -h | grep '^/dev/'
echo
echo "Top 5 Processes by CPU:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=%cpu | head -n 6
echo
echo "Top 5 Processes by Memory:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=%mem | head -n 6
