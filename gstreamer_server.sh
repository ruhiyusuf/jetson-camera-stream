#!/bin/bash

#takes three arguments: camera, client IP, client port
#e.g bash gstreamer_server.sh 1 192.168.1.34 5800
#e.g bash gstreamer_server.sh 1 10.34.19.5 5801

#gst-launch-1.0 nvarguscamerasrc sensor-id=$1 sensor-mode=2 ! 'video/x-raw(memory:NVMM), \
     #format=NV12, width=1280, height=720' ! \
     #nvv4l2h264enc insert-sps-pps=true ! h264parse ! \
		 #rtph264pay pt=96 ! udpsink host=$2 port=$3 sync=false -e

: << 'COMMENT'
gst-launch-1.0 \
	nvarguscamerasrc sensor-id=0 sensor-mode=4 ! 'video/x-raw(memory:NVMM), \
	format=NV12, width=1280, height=720' !  nvv4l2h264enc insert-sps-pps=true ! \
	h264parse ! rtph264pay pt=96 ! udpsink host=$1 port=5800 sync=false -e \
	nvarguscamerasrc sensor-id=1 sensor-mode=4 ! 'video/x-raw(memory:NVMM), \
	format=NV12, width=1280, height=720' !  nvv4l2h264enc insert-sps-pps=true ! \
	h264parse ! rtph264pay pt=96 ! udpsink host=$1 port=5801 sync=false -e \
COMMENT
# : << 'COMMENT'
gst-launch-1.0 \
	nvarguscamerasrc sensor-id=1 sensor-mode=4 ! 'video/x-raw(memory:NVMM), \
	format=NV12, width=1280, height=720' !  \
	nvv4l2h264enc insert-sps-pps=false bitrate=3000000 peak-bitrate=3500000 \
	iframeinterval=5 ! \
	h264parse ! rtph264pay pt=96 ! \
	udpsink host=$1 port=5800 sync=false -e  
#		COMMENT
	# nvv4l2h264enc insert-sps-pps=true bitrate=3000000 iframeinterval=15 ! \
: << 'COMMENT'
gst-launch-1.0 \
	nvarguscamerasrc sensor-id=1 sensor-mode=4 ! 'video/x-raw(memory:NVMM), \
	format=NV12, width=1280, height=720' !  \
	nvv4l2h264enc insert-sps-pps=true ! \
	h264parse ! rtph264pay pt=96 ! udpsink host=$1 port=5801 sync=false -e \
COMMENT
# attempted h265
: << 'COMMENT'
gst-launch-1.0 \
nvarguscamerasrc sensor-id=0 sensor-mode=4 ! 'video/x-raw(memory:NVMM), \
format=NV12, width=1280, height=720' !  nvv4l2h265enc bitrate=4000000 insert-sps-pps=true ! \
h265parse ! rtph265pay mtu=1400 pt=96 ! udpsink host=$1 port=5800 sync=false -e \
nvarguscamerasrc sensor-id=1 sensor-mode=4 ! 'video/x-raw(memory:NVMM), \
format=NV12, width=1280, height=720' !  nvv4l2h265enc bitrate=4000000 insert-sps-pps=true ! \
h265parse ! rtph265pay mtu=1400 pt=96 ! udpsink host=$1 port=5801 sync=false -e \
COMMENT
