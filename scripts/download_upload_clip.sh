#!/bin/bash

NOW=$(date +"%Y_%m_%d_%I_%M_%p")

ffmpeg -i $(youtube-dl -f 96 -g https://www.youtube.com/watch?v=4R8F4XZd9Us) -t 00:01:00.00 -c copy /pinky/patrick/birdclips/clips/${NOW}.mp4

git add /pinky/patrick/birdclips/clips/${NOW}.mp4
git commit -m "added clip ${NOW}.mp4"
git push

rm /pinky/patrick/birdclips/clips/${NOW}.mp4
