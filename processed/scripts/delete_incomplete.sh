#!/bin/bash

#for i in plain/???-???.txt; do 
#  FILE=$(basename $i)
#  NAME=$(echo $FILE | cut -d '.' -f 1)
#  echo "Checking $NAME..."
#  # if [ "" == "$(tr -d ' \t\n\r\f' < plain/$FILE)" ]; then
#  # if [ "$(du -b plain/$FILE | cut -d $'\t' -f 1)" -le 326090 ]; then
#  if [ -e "csv/cts+aaya/$NAME.csv" ]; then
#    echo "Keeping {plain,html5}/$NAME.*..."
#  else
#    echo "Deleting {plain,html5}/$NAME.*..."
#    rm {plain,html5}/$NAME.*
#  fi
#done

for i in html5/???-???.html; do
  FILE=$(basename $i)
  NAME=$(echo $FILE | cut -d '.' -f 1)
  if [ -f "plain/$NAME.txt" ]; then
    echo "keeping $i"
  else
    echo "trashing $i"
    rm $i
  fi
done
