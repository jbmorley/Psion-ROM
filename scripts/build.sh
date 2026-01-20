#!/bin/bash

# This build script generates a zip file structured for use with MAME.

ROOT_DIRECTORY="$( cd "$( dirname "$( dirname "${BASH_SOURCE[0]}" )" )" &> /dev/null && pwd )"
BUILD_DIRECTORY="$ROOT_DIRECTORY/build"


# Clean up and recreate the build directory.
if [ -d "$BUILD_DIRECTORY" ]; then
    rm -r "$BUILD_DIRECTORY"
fi
mkdir -p "$BUILD_DIRECTORY"

cd "$BUILD_DIRECTORY"

mkdir psion3
cp "$ROOT_DIRECTORY/Series3/s3_v1.91f_multi.bin" psion3
cp "$ROOT_DIRECTORY/Series3/s3_v1.80f_multi.bin" psion3

mkdir psion3s
cp "$ROOT_DIRECTORY/Series3/s3_v1.91f_eng/s3_v1.91f_eng.bin" psion3s

mkdir psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.22f_eng.bin" psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.41f_deu.bin" psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.43f_rus.bin" psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.40f_usa.bin" psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.40f_ita.bin" psion3a
cp "$ROOT_DIRECTORY/Series3a/s3a_v3.40f_eng.bin" psion3a

mkdir psion3c
cp "$ROOT_DIRECTORY/Series3c/oak_v5.20f_eng.bin" psion3c

mkdir psion3mx
cp "$ROOT_DIRECTORY/Series3mx/maple_v6.16f_uk.bin" psion3mx

mkdir psion3mx_nl
cp "$ROOT_DIRECTORY/Series3mx/maple_v6.17f_nl.bin" psion3mx_nl

mkdir psion3mx_fr
cp "$ROOT_DIRECTORY/Series3mx/maple_v6.20f_fre.bin" psion3mx_fr

mkdir siena
cp "$ROOT_DIRECTORY/Siena/vine_v4.20f_eng.bin" siena
cp "$ROOT_DIRECTORY/Siena/vine_v4.21f_fre.bin" siena/vine_v4.21f_frn.bin

mkdir psionwa
cp "$ROOT_DIRECTORY/Workabout/w1_v2.40f.bin" psionwa
cp "$ROOT_DIRECTORY/Workabout/w1_v1.00f.bin" psionwa
cp "$ROOT_DIRECTORY/Workabout/w1_v0.24b.bin" psionwa

mkdir psionwamx
cp "$ROOT_DIRECTORY/WorkaboutMX/w2mx_v7.20f.bin" psionwamx

mkdir pocketbk
cp "$ROOT_DIRECTORY/Series3/pb_v1.91f_acn/acspell.bin" pocketbk
cp "$ROOT_DIRECTORY/Series3/pb_v1.91f_acn/pb_v1.91f_acn.bin" pocketbk

mkdir pocketbk2
cp "$ROOT_DIRECTORY/Series3a/pb2_v1.30f_acn.bin" pocketbk2

zip -r "mame-roms.zip" *
