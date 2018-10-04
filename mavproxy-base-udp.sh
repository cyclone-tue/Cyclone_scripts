#!/bin/bash
FILE=/dev/ttyACM0

sleep 30

if [ -e $FILE ]; then
	stty -F $FILE 115200 raw -echo -echoe -echok -iexten -echoctl -echoke
	socat UDP-DATAGRAM:127.0.0.1:13320 file:$FILE &
	echo $!
        #touch /var/run/socat_mavproxy.pid
        echo "$!" > "./socat_mavproxy.pid"
else
	echo "Start.sh: GPS not connected"
fi
screen -S MavProxy -d -m -s /bin/bash mavproxy.py --master=udpout:192.168.1.119:14550 --out=udpin:0.0.0.0:14550 --out=udp:127.0.0.1:14000 --load-module=DGPS --cmd="set shownoise false"
#screen -S MavProxy -d -m -s /bin/bash mavproxy.py --master=/dev/ttyUSB0,115200 --out=udpin:0.0.0.0:14550 --load-module=DGPS --cmd="set shownoise false"
