#!/bin/bash

PID=$(cat /home/odroid/Cyclone_scripts/socat_mavproxy.pid)

#su odroid -c "screen -S MavProxy -X quit"
echo "Killing screen..."
#screen -S MavProxy -X quit
for session in $(screen -ls | grep -o '[0-9]*\.MavProxy'); do screen -S "${session}" -X quit; done
echo "Done."

echo "Going to kill socat with PID: $PID"
kill $PID
echo "Done."

rm /home/odroid/Cyclone_scripts/socat_mavproxy.pid

