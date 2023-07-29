#!/bin/sh

pandoc -o output/out.pdf --pdf-engine=xelatex --template=input/main.tex input/manifesto.md