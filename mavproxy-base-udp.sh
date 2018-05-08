#!/bin/bash
FILE=/dev/ttyACM0
if [ -e /dev/ttyACM0 ]; then
	stty -F /dev/ttyACM0 115200 raw -echo -echoe -echok -iexten -echoctl -echoke
	socat UDP-DATAGRAM:127.0.0.1:13320 file:/dev/ttyACM0 &
else
	echo "GPS not connected"
fi
screen -S MavProxy -d -m -s /bin/bash mavproxy.py --master=udpout:192.168.1.119:14550 --out=udpin:0.0.0.0:14550 --out=udp:127.0.0.1:14000 --load-module=DGPS --cmd="set shownoise false"
