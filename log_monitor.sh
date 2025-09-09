#!/bin/bash
echo "===== Security Log Check: $(date) ====="
grep "Failed password" /var/log/auth.log | tail -n 5
