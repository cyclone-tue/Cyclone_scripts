#!/bin/bash

#PID_socat=$(cat /home/odroid/Cyclone_scripts/socat_mavproxy.pid)
#PID_screen=$(cat  /home/odroid/Cyclone_scripts/screen_mavproxy.pid)

#su odroid -c "screen -S MavProxy -X quit"
echo "Stop.sh: Cleaning up screen"
#screen -S MavProxy -X quit
#killall screen
for session in $(screen -ls | grep -o '[0-9]*\.MavProxy'); do screen -S "${session}" -X quit; done
#kill $PID_screen
echo "Stop.sh: Done."


