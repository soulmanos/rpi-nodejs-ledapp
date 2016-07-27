#!/bin/bash
docker run -d \
    -p 8079:8079 \
    --name node-led \
    soulmanos/rpi-nodejs-ledapp:v1
