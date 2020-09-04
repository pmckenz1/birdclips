#!/bin/bash

NOW=$(date +"%Y_%m_%d_%I_%M_%p")

ffmpeg -i $(youtube-dl -f 96 -g https://www.youtube.com/watch?v=4R8F4XZd9Us) -t 00:00:30.00 -c copy /pinky/patrick/bird_stream/clips/${NOW}.mp4

