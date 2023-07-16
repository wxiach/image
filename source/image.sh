#!/bin/bash

for name in ./*; do
    ext="${name##*.}"
    lowercase_ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')
    if [[ "$lowercase_ext" == "jpg" || 
          "$lowercase_ext" == "jpeg" || 
          "$lowercase_ext" == "png" || 
          "$lowercase_ext" == "gif" || 
          "$lowercase_ext" == "bmp" || 
          "$lowercase_ext" == "tiff" || 
          "$lowercase_ext" == "svg" ]]; then
        rename=`md5sum "$name" | awk '{print $1}'`
        mv "$name" ../${rename}.$lowercase_ext
    fi
done

cd ..

git pull

git add --all

git commit -m 'add images'

git push
