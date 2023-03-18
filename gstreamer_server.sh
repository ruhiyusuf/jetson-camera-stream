#!/bin/bash

#takes three arguments: camera, client IP, client port
#e.g bash gstreamer_server.sh 1 192.168.1.34 5800
#e.g bash gstreamer_server.sh 1 10.34.19.5 5801

#gst-launch-1.0 nvarguscamerasrc sensor-id=$1 sensor-mode=2 ! 'video/x-raw(memory:NVMM), \
     #format=NV12, width=1280, height=720' ! \
     #nvv4l2h264enc insert-sps-pps=true ! h264parse ! \
		 #rtph264pay pt=96 ! udpsink host=$2 port=$3 sync=false -e

gst-launch-1.0 \
	nvarguscamerasrc sensor-id=0 sensor-mode=4 ! 'video/x-raw(memory:NVMM), \
	width=(int)1280, height=(int)720, format=(string)NV12, \
	framerate=(fraction)60/1' !  nvv4l2h265enc bitrate=4000000 ! \
	h265parse ! rtph265pay mtu=1400 ! udpsink host=$1 port=5800 sync=false -e \
	nvarguscamerasrc sensor-id=1 sensor-mode=4 ! 'video/x-raw(memory:NVMM), \
	width=(int)1280, height=(int)720, format=(string)NV12, \
	framerate=(fraction)60/1' !  nvv4l2h265enc bitrate=4000000 ! \
	h265parse ! rtph265pay mtu=1400 ! udpsink host=$1 port=5801 sync=false -e \
