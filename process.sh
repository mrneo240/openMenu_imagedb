#!/bin/sh
OUT=output
TOOLS=tools

# process images to proper format and location
./process_EX.sh

# pack DAT
./pack_DAT.sh
