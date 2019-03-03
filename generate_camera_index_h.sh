#!/bin/bash

gzip -k index.html

FILESIZE=$(cat index.html.gz | wc -c | tr -d '[:space:]')

echo "//File: index.html.gz, Size: ${FILESIZE}" > camera_index.h
echo "#define index_html_gz_len ${FILESIZE}" >> camera_index.h
echo "const uint8_t index_html_gz[] = {" >> camera_index.h
cat index.html.gz | xxd -i - >> camera_index.h
echo "};" >> camera_index.h

rm index.html.gz




