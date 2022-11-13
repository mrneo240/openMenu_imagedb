#!/bin/sh
OUT=output
TOOLS=tools
TEMP=temp

# setup folders
mkdir -p ${OUT}
mkdir -p ${TOOLS}
mkdir -p ${TEMP}

# clone tools and stbconv
git clone --depth 1 https://github.com/mrneo240/openmenu.git ${TEMP}/openmenu
git clone --depth 1 https://gitlab.com/HaydenKow/stbconv.git ${TEMP}/stbconv

# build both
make -j4 -C ${TEMP}/openmenu/tools
make -C ${TEMP}/stbconv stbconv_smallargs

# copy tools to tools dir
cp ${TEMP}/openmenu/tools/renamecsv ${TEMP}/openmenu/tools/datpack ${TOOLS}/
cp ${TEMP}/stbconv/stbconv_smallargs ${TOOLS}/stbconv