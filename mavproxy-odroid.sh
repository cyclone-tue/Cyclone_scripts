#!/bin/bash

mavproxy.py --master=/dev/ttyS1 --out=/dev/ttyUSB0 --cmd="set shownoise false"

exit
