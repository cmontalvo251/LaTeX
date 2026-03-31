#!/bin/bash
#I have created a simple bash script called texit which will compile the 
#ptx files into a pdf and then copy the pdf to the root directory so it's easy to find
if [ "$1" == "pdf" ]; then
    pretext build print
    #Normally I would just copy the file
    #cp output/print/main.pdf main.pdf
    #but for some reason pretext also creates two
    #title pages so I'm going to "pop" the first page
    #make sure you have pdftk installed
    #sudo apt install pdftk
    #pdftk output/print/main.pdf cat 2-end output main.pdf
    cp output/print/main.pdf main.pdf
    #It will also evince the document so you can view it immediately. 
    evince main.pdf &
elif [ "$1" == "web" ]; then
    #It will also compile the ptx files for the web and then view it in the browser.
    pretext build web
    #make sure you have google-chrome installed
    #Download that directly from the web
    google-chrome output/web/index.html &
elif [ "$1" == "latex" ]; then
    #This will compile the latex files and open the pdf in evince
    pretext build latex
elif [ "$1" == "all" ]; then
    ./textit.sh web
    ./textit.sh pdf
else
    echo "Invalid option. Please use either 'all, 'pdf' or 'web'."
    echo "pdf: Compile the ptx files into a pdf and open it with evince."
    echo "web: Compile the ptx files for the web and open it with google-chrome."
fi

#It will not deploy the book as that is cloud based and I feel it is similar to git 
#and should be something done by the user rather than an automated process.

#pretext deploy <- remember this is that command if you're looking for it.
