#!/usr/bin/env bash

file_source=(./images/original/*)
sizes=(182 364 728 1456)
file_destination="./images/processed"

for file in "${file_source[@]}"
do
  file_without_extension=${file%.*}
  # Remove everything at the beginning of the string before the last `/`
  file_without_path=${file_without_extension##*/}

  for size in "${sizes[@]}"
  do
    new_file="${file_destination}/${file_without_path}_${size}px.jpg"
    $(magick $file -resize ${size} -quality 92 $new_file)
  done
done
