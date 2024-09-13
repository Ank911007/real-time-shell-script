#!/bin/bash

while true; do
        clear # clear the terminal

        echo "System Resource Monitoring"
        echo "--------------------------"

        # Display CPU Usage
        echo "Cpu Usage"
        top -n 1 -b | grep "Cpu"

        # Display Memory Usage
        echo -e "\nMemory Usage: "
        free -h

        # Display disk usage space
        echo -e "\nDisk Space usage"
        df -h

        sleep 5 #wait for 5sec before next update
done
