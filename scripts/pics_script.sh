#!/bin/bash

NOW=$(TZ=America/Chicago date +"%Y_%m_%d_%I_%M_%p")

timeout 300 ffmpeg -i $(youtube-dl -f 95 -g https://www.youtube.com/watch?v=4R8F4XZd9Us) -vframes 1 /pinky/patrick/birdclips/pics/${NOW}.jpg

git add /pinky/patrick/birdclips/pics/${NOW}.jpg
git commit -m "added single frame ${NOW}.jpg"
git push

rm /pinky/patrick/birdclips/pics/${NOW}.jpg
