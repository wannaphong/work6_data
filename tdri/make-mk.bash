#!/bin/bash
cd TDRI_MS-Word_Final-report
lowriter --convert-to docx *.doc
mkdir attachments
for filename in ./*.docx; do
    pandoc \
-t markdown_strict \
--extract-media="./attachments/$(basename $filename)" \
$filename \
-o $filename.md \
--wrap=none
done
# for filename in *.doc; do
#     pandoc \
# -t markdown_strict \
# --extract-media='./attachments/$filename' \
# $filename \
# -o $filename.md
# done