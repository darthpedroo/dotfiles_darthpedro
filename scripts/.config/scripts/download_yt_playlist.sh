#!/bin/bash

# how to use:
# $1 is the output folder
# $2 is the playlist link

yt-dlp -o '$1%(title)s.%(ext)s' $2
