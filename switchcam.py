#!/usr/bin/env python

import signal
import sys
import time
import gi
import socket

gi.require_version('Gst', '1.0');
from gi.repository import Gst, GObject


UDP_IP = "255.255.255.255"
UDP_PORT = 5803
CONTROL_PORT = 5804

ip_sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
ip_sock.bind((UDP_IP, UDP_PORT))

# Signal handler stopping the pipeline before exit
def signal_handler(sig, frame):
	stop_all_pipelines()
	sys.exit(0)

GObject.threads_init()
Gst.init(None)

# CLIENT_IP = sys.argv[1]

CLIENT_IP, addr = ip_sock.recvfrom(1024) 
print(CLIENT_IP)

def init_pipelines(CLIENT_IP):
	cam0_gst_cmd = "nvarguscamerasrc sensor-id=0 sensor-mode=4 ! video/x-raw(memory:NVMM), \
						format=NV12, width=1280, height=720 ! \
						nvv4l2h264enc insert-sps-pps=true ! \
						h264parse ! rtph264pay pt=96 ! udpsink host=" + CLIENT_IP + " port=5800"
						

	cam1_gst_cmd = "nvarguscamerasrc sensor-id=1 sensor-mode=4 ! video/x-raw(memory:NVMM), \
						format=NV12, width=1280, height=720 ! \
						nvv4l2h264enc insert-sps-pps=true ! \
						h264parse ! rtph264pay pt=96 ! udpsink host=" + CLIENT_IP + " port=5801"

	# Create the pipeline
	global cam0_pipe, cam1_pipe
	cam0_pipe = Gst.parse_launch(cam0_gst_cmd)
	cam1_pipe = Gst.parse_launch(cam1_gst_cmd)
	print(cam0_gst_cmd)

init_pipelines(CLIENT_IP)
print("initialized")
# Register signal handler for proper termination if receiving
signal.signal(signal.SIGINT, signal_handler)

def start_pipeline(pipe):
	# Start the pipeline
	pipe.set_state(Gst.State.READY)
	pipe.set_state(Gst.State.PAUSED)
	pipe.set_state(Gst.State.PLAYING)


def start_all_pipelines():
	start_pipeline(cam0_pipe)
	start_pipeline(cam1_pipe)

start_all_pipelines()
print("started pipelines")
def stop_pipeline(pipe):
	pipe.set_state(Gst.State.NULL)

def stop_all_pipelines():
	stop_pipeline(cam0_pipe)
	stop_pipeline(cam1_pipe)

def init_control_sock():
	global control_sock
	control_sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
	control_sock.bind((UDP_IP, CONTROL_PORT))

init_control_sock();

while True:  

	# if client ip has changed, restart pipelines
	NEW_CLIENT_IP, addr = ip_sock.recvfrom(1024) 
	if (NEW_CLIENT_IP != CLIENT_IP) :
		print("new ip:", NEW_CLIENT_IP)
		CLIENT_IP = NEW_CLIENT_IP
		stop_all_pipelines()
		init_pipelines(CLIENT_IP)
		start_all_pipelines()

	control_cmd, addr = control_sock.recvfrom(1024) 
	control_cmd = str(control_cmd.decode());
	print(control_cmd, type(control_cmd))
	if ("cam0" in control_cmd): 
		print("control 0")
		cam1_pipe.set_state(Gst.State.PAUSED)
		cam0_pipe.set_state(Gst.State.PLAYING)
	if ("cam1" in control_cmd): 
		print("cam 1")
		cam0_pipe.set_state(Gst.State.PAUSED)
		cam1_pipe.set_state(Gst.State.PLAYING)
	"""
	if cam0_pipe.get_state(Gst.CLOCK_TIME_NONE)[1] == Gst.State.PLAYING: 
		print("Pausing video for 10 seconds...")
		cam0_pipe.set_state(Gst.State.PAUSED)
		cam1_pipe.set_state(Gst.State.PAUSED)
	else: 
		print("Playing video for 10 seconds...")
		cam0_pipe.set_state(Gst.State.PLAYING)
		cam1_pipe.set_state(Gst.State.PLAYING)
"""	
# Done. Stop the pipeline before clean up on exit. 
stop_all_pipelines()
exit(0)

