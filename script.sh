#!/bin/sh

# This script will generate a PDF from LaTeX and Markdown files
# We're using the pandoc tool to generate the PDF https://pandoc.org/

pandoc -o output/out.pdf --pdf-engine=xelatex --template=input/main.tex input/manifesto.md

sleep 10

echo $(python -V) >> output/python-version
echo $(pip -V) >> output/python-version