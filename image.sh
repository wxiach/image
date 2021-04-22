#!/bin/bash

for name in ./source/*; do
	rename=`md5sum $name | awk '{print $1}'`
	mv $name ./${rename}.${name##*.}
done
