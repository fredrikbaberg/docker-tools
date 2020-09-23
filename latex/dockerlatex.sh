#!/bin/bash
# Using: Run this script with a .tex file as argument, e.g. dockerlatex.sh example.tex, to compile the document 'example.tex'.
# Hint: Copy this to ~/bin/ and chmod +x to be able to call it from anywhere (as dockerlatex.sh <filename.tex>).
echo "This script will now:"
echo "* Create folders 'build' and 'pdf',"
echo "* Run pdflatex once for $1,"
echo "* Run bibtex once for $1,"
echo "* Run pdflatex twice to update references,"
echo "* Copy any generated PDF files into 'pdf' folder."
echo ""

# docker run --rm -i --user="$(id -u):$(id -g)" -v $PWD:/docs docker_latex mkdir --p build pdf && pdflatex -output-directory build "$@" && cp $PWD/build/*.pdf $PWD/pdf/
docker run --rm -i --user="$(id -u):$(id -g)" -v $PWD:/docs docker_latex mkdir --p build pdf && pdflatex --output-directory build "$@" && TEXMFOUTPUT=build/ bibtex build/$(echo $1 | sed 's=.*/==;s/\.[^.]*$//') && pdflatex -output-directory build "$@" && pdflatex --output-directory build "$@" && cp $PWD/build/*.pdf $PWD/pdf/