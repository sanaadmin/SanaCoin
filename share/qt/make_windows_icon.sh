#!/bin/bash
# create multiresolution windows icon
#mainnet
ICON_SRC=../../src/qt/res/icons/sanacoin.png
ICON_DST=../../src/qt/res/icons/sanacoin.ico
convert ${ICON_SRC} -resize 16x16 sanacoin-16.png
convert ${ICON_SRC} -resize 32x32 sanacoin-32.png
convert ${ICON_SRC} -resize 48x48 sanacoin-48.png
convert sanacoin-16.png sanacoin-32.png sanacoin-48.png ${ICON_DST}
#testnet
ICON_SRC=../../src/qt/res/icons/sanacoin_testnet.png
ICON_DST=../../src/qt/res/icons/sanacoin_testnet.ico
convert ${ICON_SRC} -resize 16x16 sanacoin-16.png
convert ${ICON_SRC} -resize 32x32 sanacoin-32.png
convert ${ICON_SRC} -resize 48x48 sanacoin-48.png
convert sanacoin-16.png sanacoin-32.png sanacoin-48.png ${ICON_DST}
rm sanacoin-16.png sanacoin-32.png sanacoin-48.png
