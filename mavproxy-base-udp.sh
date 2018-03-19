#!/bin/bash

stty -F /dev/ttyACM0 57600 raw -echo -echoe -echok -iexten -echoctl -echoke
socat UDP-DATAGRAM:127.0.0.1:13320 file:/dev/ttyACM0

mavproxy.py --master=udpout:192.168.1.119:14550 --out=udp:127.0.0.1:14000 --load-module=DGPS --cmd="set shownoise false"
