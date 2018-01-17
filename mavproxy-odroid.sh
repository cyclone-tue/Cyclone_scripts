#!/bin/bash

mavproxy.py --master=/dev/ttyS1 --out=/dev/ttyUSB0 --baudrate=115200 --cmd="set shownoise false"

exit
