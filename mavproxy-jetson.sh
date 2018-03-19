#!/bin/bash

screen -S MavProxy -d -m -s /bin/bash mavproxy.py --master=/dev/ttyTHS1,115200 --out=udpin:0.0.0.0:14550 --out=udp:127.0.0.1:14000 --cmd="set shownoise false"

exit
