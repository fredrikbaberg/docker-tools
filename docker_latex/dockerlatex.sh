#!/bin/bash
# Using: Run this script with a .tex file as argument, e.g. dockerlatex.sh example.tex, to compile the document 'example.tex'.
# Hint: Copy this to /usr/local/bin/dockerlatex, and chmod +x, to be able to call the script from anywhere (as dockerlatex <filename.tex>).
echo "This script will now:"
echo "* Create folders 'build' and 'pdf',"
echo "* Run pdflatex once for $1 (run again to fix references etc.),"
echo "* Copy any generated PDF files into 'pdf' folder."
echo ""
docker run --rm -i --user="$(id -u):$(id -g)" -v $PWD:/docs docker_latex mkdir --p build pdf && pdflatex -output-directory build "$@" && cp $PWD/build/*.pdf $PWD/pdf/
