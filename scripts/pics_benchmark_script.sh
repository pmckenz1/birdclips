#!/bin/bash

NOW=$(TZ=America/Chicago date +"%Y_%m_%d_%I_%M_%p")

timeout 300 ffmpeg -i $(youtube-dl -f 95 -g https://www.youtube.com/watch?v=N609loYkFJo) -vframes 1 /pinky/patrick/birdclips/pics_benchmark/${NOW}.jpg

git add /pinky/patrick/birdclips/pics_benchmark/${NOW}.jpg
git commit -m "added single benchmark frame ${NOW}.jpg"
git push

rm /pinky/patrick/birdclips/pics_benchmark/${NOW}.jpg
