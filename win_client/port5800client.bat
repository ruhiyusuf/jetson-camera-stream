cd C:\gstreamer\1.0\x86\bin 
gst-launch-1.0.exe -vvv -e udpsrc port=5800 ! "application/x-rtp, media=(string)video, clock-rate=(int)90000, encoding-name=(string)H264, payload=(int)96" ! rtph264depay ! avdec_h264 ! textoverlay text="CAM0" valignment=top halignment=left font-desc="Sans, 36" ! autovideosink
pause
