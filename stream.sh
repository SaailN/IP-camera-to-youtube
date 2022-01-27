#!/bin/bash

#replace password and IP_address_of_camera with your ip camera password and ip address
RTSP_URL="rtsp://admin:password@IP_address_of_camera:554"
YOUTUBE_URL="rtmp://a.rtmp.youtube.com/live2"
YOUTUBE_KEY="Youtube stream key" #replace with your youtube live key

ffmpeg -f lavfi -i anullsrc -rtsp_transport tcp -i ${RTSP_URL} -tune zerolatency -vcodec libx264 -pix_fmt + -c:v copy -c:a mp3 -strict experimental -f flv ${YOUTUBE_URL}/${YOUTUBE_KEY}

