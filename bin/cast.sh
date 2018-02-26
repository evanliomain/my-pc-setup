#!/bin/bash

#cast series


export saisonNumber=$(echo $(pwd) \
 | sed 's#^.*\/\([^\/]*\)$#\1#' \
 | sed 's#s\([0-9]*\)#\1#')

if [ 0 -eq $# ]
then
  echo "usage $0 <episodeNumber>"
  exit 1
fi

export episodeNumber=$1

export episodeIdentifiant="S${saisonNumber}E${episodeNumber}"

if [ "X$(ls | grep $episodeIdentifiant)" = 'X' ]
then
  echo "No file found for $episodeIdentifiant" >&2
  exit 1
fi

for file in $(ls | grep $episodeIdentifiant)
do
  if [ $(echo $file | sed 's#^.*\.srt$#0#') = '0' ]
  then
    export subtitle=$file
  else
    export video=$file
  fi
done

if [ "X$video" = 'X' ]
then
  echo "No video found" >&2
  exit 1
elif [ "X$subtitle" = 'X' ]
then
  echo "Found video $video"
  echo "No subtitle found" >&2
  castnow $video
else
  echo "Found video $video"
  echo "Found subtitle $subtitle"
  castnow $video \
    --bypass-srt-encoding \
    --subtitles $subtitle \
    --subtitle-scale 1.3 \
    --subtitle-color #FFFFFFFF
fi
