#!/bin/bash

mavproxy.py --master=/dev/ttyS1 --out=/dev/ttyUSB0 --load-module=droneapi.module.api

exit
