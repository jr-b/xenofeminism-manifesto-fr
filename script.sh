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

echo "running pdfjam - normal pdf"
./pdfjam-3.06/bin/pdfjam --batch --nup 2x1 --suffix 2up --twoside --openright true --no-landscape --outfile output/ output/out.pdf

echo "running pdfjam - print pdf"
# If our total pages number changes, we need to rebuild the imposition!
# Delta add spaces between each pages on the spread 
./pdfjam-3.06/bin/pdfjam output/out.pdf '9,10,11,8,7,12,13,6,5,14,15,4,3,16,17,2,{},{},{},1' --nup 2x1 --twoside --delta '1cm 0cm' --outfile output/out-print.pdf

echo "deleting stuff"
rm pdfjam-3.06.tar.gz
rm -r pdfjam-3.06/