#!/usr/bin/bash

set -euo pipefail

# for clarity of repo structure

# DNS3 data download and unpack to data
URL="https://datashare.ed.ac.uk/download/DS_10283_2791.zip"

echo "Download: $URL"
curl -s -I "$URL"

# making a temp file for zip and ensure cleanup
TMPZIP="$(mktemp -t vctk_demand_data.XXXXXX.zip)"
# removing temporary .zip file
cleanup() { rm -f "$TMPZIP"; }
trap cleanup EXIT

# get download and send to temporary zip file
wget "$URL" -O "$TMPZIP"

# unzip the data and send to directory
# check if DIRECTORY exists, run from root
DIRECTORY="./python/data/VCTK-DEMAND"

if [[ -d "$DIRECTORY" ]]; then
	echo "DNS3 directory exists: '$DIRECTORY'"
else
	echo "DNS3 directory doesn't exist"
	echo "Creating directory: $DIRECTORY "
	mkdir -p "$DIRECTORY"
fi

# checking if the target directory is empty
if [[ -z "$(ls -A "$DIRECTORY")" ]]; then
	echo "Unzipping all VCTK-DEMAND data"
	# unzipping files
	unzip -q -n "$TMPZIP" -d "$DIRECTORY"
else
	echo "Data already downloaded to '$DIRECTORY'"
fi

# checking file size as confirmation
du -sh "$DIRECTORY"
