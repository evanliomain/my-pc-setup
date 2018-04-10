#!/bin/bash

# video2audio
# Convert a video into an mp3 audio file

if [ $# -ne 1 ]
then
  echo "$0 video_file"
  exit 1
fi

export filepath=$1
export fileBasename=$(echo $filepath | sed 's#\(.*\)\.\([^\.]*\)$#\1#')
export fileExtension=$(echo $filepath | sed 's#\(.*\)\.\([^\.]*\)$#\2#')
export audioFilepath="$fileBasename.mp3"
echo $filepath
echo $fileBasename
echo $fileExtension

avconv \
  -i "$filepath" \
  -vn -acodec libmp3lame -ac 2 -ab 160k -ar 48000 \
  "$audioFilepath"
