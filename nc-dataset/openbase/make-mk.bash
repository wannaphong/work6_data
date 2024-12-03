#!/bin/bash
cd docs
# lowriter --convert-to docx *.doc
mkdir -p markdown
for filename in ./*.docx; do
    pandoc \
-t markdown_strict \
--extract-media="./markdown/$(basename $filename)" \
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