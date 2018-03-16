#!/bin/bash

mavproxy.py --master=/dev/ttyTHS1,115200 --out=udpin:0.0.0.0:14550 --cmd="set shownoise false"

exit
