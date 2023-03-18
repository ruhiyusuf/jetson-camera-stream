cd C:\gstreamer\1.0\x86\bin 
gst-launch-1.0  udpsrc port=5801 ! application/x-rtp,encoding-name=H265,payload=96 ! rtph265depay ! h265parse ! queue ! avdec_h265 ! d3d11videosink
pause
