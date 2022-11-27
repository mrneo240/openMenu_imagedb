#!/bin/sh
TOOLS=tools
CAT=catalogues/product_aw.csv
IN=AW_PAL_input
OUT_BOX=BOX_all
OUT_ICON=ICON_all

# Boxart
mkdir -p ${OUT_BOX}

mogrify -path ${OUT_BOX} -resize 256x256! -format bmp -define bmp:format=bmp3 -type truecolor -depth 8 ${IN}/*
${TOOLS}/stbconv -t -5 -nm -gi 1001 ${OUT_BOX}/*.bmp
rm ${OUT_BOX}/*.bmp
${TOOLS}/renamecsv ${OUT_BOX}/ ${CAT}
# pvr format: no mipmap, twiddled, rgb565, global index 1001

#Icon
mkdir -p ${OUT_ICON}

mogrify -path ${OUT_ICON} -resize 128x128! -format bmp -define bmp:format=bmp3 -type truecolor -depth 8 ${IN}/*
${TOOLS}/stbconv -t -5 -nm -gi 1001 ${OUT_ICON}/*.bmp
rm ${OUT_ICON}/*.bmp
${TOOLS}/renamecsv ${OUT_ICON}/ ${CAT}
# pvr format: no mipmap, twiddled, rgb565, global index 1001
