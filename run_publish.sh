#!/bin/bash
COUNT=1

while true
do
	node publish_adv.js
    ((COUNT=COUNT+1))
    echo $COUNT > count.txt
done