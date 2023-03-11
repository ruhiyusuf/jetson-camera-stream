#!/bin/bash

gst-launch-1.0 udpsrc address=localhost port=5000 \
     caps='application/x-rtp, encoding-name=(string)H264, payload=(int)96' ! \
     rtph264depay ! queue ! h264parse ! nvv4l2decoder ! nv3dsink -e
