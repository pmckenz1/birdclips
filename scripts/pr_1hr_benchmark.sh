#!/bin/bash

NOW=$(TZ=America/Chicago date +"%Y_%m_%d_%I_%M_%p")

timeout 2h ffmpeg -i $(youtube-dl -f 95 -g https://www.youtube.com/watch?v=N609loYkFJo) -t 01:00:00.00 -c copy /pinky/patrick/birdclips/pr_clips_benchmark/${NOW}.mp4

