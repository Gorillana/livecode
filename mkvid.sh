#!/bin/bash

cd /Users/pamselle/Music/SuperCollider\ Recordings

# ffmpeg -i $1.mp3 -ss 00:35 -t 0:30 -filter_complex "[0:a]showspectrum=s=512x512:color=fiery:scale=log:win_func=rect,format=yuv420p[v]" -map "[v]" -map 0:a -t 20 /Users/pamselle/Projects/livecode/viz/$1-viz.mp4

ffmpeg -i $1.mp3 -ss 00:45 -t 0:10 -filter_complex \
"[0:a]showspectrum=s=640x512:color=rainbow:slide=scroll,format=yuv420p[v]" \
 -map "[v]" -map 0:a /Users/pamselle/Projects/livecode/$1-viz.mp4
 # "[0:a]showspectrum=s=400x400:color=fire,format=yuv420[v]" \
