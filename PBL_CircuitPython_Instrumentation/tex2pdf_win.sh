#!/bin/bash
if [ $# -eq 0 ]; then
    echo 'No input arguments defined'
    exit
fi
file=$1
#check to make sure file exists
if [ -e $file ]; then
    #Grab everything except .tex
    #Figure out how long the file is...
    size=${#file}
    #now substract 4 from this
    endpt=$(($size - 4))
    #now save the actual filename
    filename=${file:0:$endpt}
    #remove extraneous files
    rm *.out *.aux *.log *.blg *.bbl *.toc *.lot *.lof *.bbl *.fff *.ttt *.bcf *.run.xml
    #Remove old version of filename but make a backup first
    cp $filename.pdf $filename.backup.pdf
    rm $filename.pdf
    pdflatex $filename.tex
    bibtex $filename.aux
    if [ $# -eq 2 ]; then
	if [ "$2" == "usebiber" ]; then
	    biber $filename.bcf
	fi
    fi
    pdflatex $filename.tex
    pdflatex $filename.tex
    #OS type
    MAC='Darwin'
    CYGWIN='CYGWIN_NT-10.0-19045' #this changes so run 'echo $(uname) to get the right version
    OS=$(uname)
    if [ "$OS" = "$MAC" ]; then
	   open $filename.pdf &
    else
        if [ "$OS" = "$CYGWIN" ]; then
	       cygstart $filename.pdf 
        else
        	evince $filename.pdf &
        fi
    fi
    #remove extraneous files
    rm *.aux *.log *.blg *.bbl *.toc *.lot *.lof *.bbl *.fff *.ttt *.bcf *.run.xml
    #echo 'Running Texcount'
    #texcount $filename.tex &> WordCount.txt
else
    echo $file does not exist
fi
# Copyright - Carlos Montalvo 2015
# You may freely distribute this file but please keep my name in here
# as the original owner
