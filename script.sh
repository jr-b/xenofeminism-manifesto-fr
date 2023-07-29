#!/bin/sh

# This script will generate a PDF from LaTeX and Markdown files
# We're using pandoc tool to generate the PDF https://pandoc.org/

echo "Generate pdf with pandoc"
pandoc -o output/out.pdf --pdf-engine=xelatex --template=input/main.tex input/manifesto.md
ret=$?
echo "pandoc returned $ret"

echo "Downloading pdfjam"
wget https://github.com/rrthomas/pdfjam/releases/download/v3.06/pdfjam-3.06.tar.gz

echo "Extracting pdfjam"
tar -xvf pdfjam-3.06.tar.gz

echo "running pdfjam"
./pdfjam-3.06/bin/pdfjam --batch --nup 2x1 --suffix 2up --landscape output/out.pdf --outfile output/