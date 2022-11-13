#!/bin/sh
OUT=output
TOOLS=tools

# process images to proper format and location
./process_EX.sh # Unreleased, demos, debug, etc...
./process_HB.sh # Homebrew Covers
./process_AW_NTSC.sh # Atomiswave with NTSC style covers
#./process_AW_PAL.sh # Atomiswave with PAL style covers
./process_USA.sh # Commercial USA
./process_PAL.sh # Commercial PAL
./process_JAP.sh # Commercial JAP

# pack DAT
./pack_DAT.sh
