#!/bin/bash -ex

src_folder="../task1-simple-program"
tmp_folder="/tmp/guesanumber"


## Flushing tmp directory
[ -d $tmp_folder ] && rm $tmp_folder/*

## Copying files to tmp folder
mkdir -p $tmp_folder
cp $src_folder/*.{c,h} $tmp_folder

## Archiving backup to release folder
mkdir -p $src_folder/release
tar --directory=$(dirname $tmp_folder) -cvzf \
	$src_folder/release/$(basename $tmp_folder).tar.gz \
	$(basename $tmp_folder)
