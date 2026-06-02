#!/bin/bash
echo"===================================="
echo "TOP 5 MEMORY CONSUMING PROCESSES: "
echo"===================================="

ps aux --sort=-%mem | head -6
ps aux --sort=-%mem | head -6 | awk '{print $1, $2, $3, $4, $11}'
