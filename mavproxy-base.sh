#!/bin/bash

stty -F /dev/ttyACM0 57600 raw -echo -echoe -echok -iexten -echoctl -echoke
socat UDP-DATAGRAM:127.0.0.1:13320 file:/dev/ttyACM0

mavproxy.py --master=/dev/ttyUSB0 --load-module=DGPS 
