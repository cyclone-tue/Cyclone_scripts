#!/bin/bash

PID=$(cat ./socat_mavproxy.pid)

#su odroid -c "screen -S MavProxy -X quit"
echo "Killing screen..."
#screen -S MavProxy -X quit
for session in $(screen -ls | grep -o '[0-9]*\.MavProxy'); do screen -S "${session}" -X quit; done
echo "Done."

echo "Going to kill socat with PID: $PID"
kill $PID
echo "Done."

rm ./socat_mavproxy.pid

