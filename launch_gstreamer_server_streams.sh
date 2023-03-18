#!/bin/bash

# launch gstreamer server streams
CLIENT_IP=`netcat -lu -w0 5803`
# bash /usr/local/bin/gstreamer_server.sh $CLIENT_IP &
python /usr/local/bin/switchcam.py
wait
