#!/bin/bash

# launch gstreamer server streams
# bash /usr/local/bin/gstreamer_server.sh 10.23.67.213 &
CLIENT_IP=`netcat -lu -w0 5803`
# bash /usr/local/bin/gstreamer_server.sh 10.0.0.19 &
bash /usr/local/bin/gstreamer_server.sh $CLIENT_IP &
wait
