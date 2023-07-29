#!/bin/sh

# This script will generate a PDF from LaTeX and Markdown files
# We're using the pandoc tool to generate the PDF https://pandoc.org/

pandoc -o output/out.pdf --pdf-engine=xelatex --template=input/main.tex input/manifesto.md

sleep 10

echo $(python3 -V) >> output/python-version
echo $(pip3 -V) >> output/python-version

### Install Tex Live
## https://tug.org/texlive/quickinstall.html

wget https://github.com/rrthomas/pdfjam/releases/download/v3.06/pdfjam-3.06.tar.gz -O /tmp/pdfjam-3.06.tar.gz
zcat < /tmp/pdfjam-3.06.tar.gz | tar xf -
echo $(ll /tmp/pdfjam-3.06) >> output/pdfjam-logs
PATH=/tmp/pdfjam-3.06/bin/pdfjam:$PATH

pdfjam --batch --nup 2x1 --suffix 2up --landscape output/out.pdf