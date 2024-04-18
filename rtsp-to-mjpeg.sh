#!/bin/sh

/usr/bin/cvlc rtsp://$CAMERAUSER:$CAMERAPASSWORD@$CAMERAIP:$CAMERAPORT/$CAMERASTREAM --sout '#transcode{vcodec=MJPG,venc=ffmpeg{strict=1}}:standard{access=http{mime=multipart/x-mixed-replace; boundary=myboundary},mux=mpjpeg,dst=:8080/}'
