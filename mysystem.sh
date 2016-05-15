#!/bin/bash
# This command will fetch all the information of system configuration and will output it to HTML
`sudo lshw -html > myspecs.html`

# This command gives information on system load averages for past 1,5 and 15 minutes
echo "The average load on system\n"  `uptime`

# Top 5 processes with maximum number for threads
echo "\nTop 5 processes with maximum number of threads\n" `top -b -n 1 | head -n 12 | tail -n 5` 

# Sort and display services by memory usage
echo "\nTop 5 services by memory usage\n" `ps aux --sort rss | head -5`
exit
