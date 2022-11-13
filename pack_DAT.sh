#!/bin/sh
TOOLS=tools
OUT=output
IN_BOX=BOX_all
IN_ICON=ICON_all
OUT_BOX=${OUT}/BOX.DAT
OUT_ICON=${OUT}/ICON.DAT

# pack generated PVRs into DATs
${TOOLS}/datpack ${IN_BOX} ${OUT_BOX}
${TOOLS}/datpack ${IN_ICON} ${OUT_ICON}
