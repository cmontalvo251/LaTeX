# LaTeX

All of my textbooks written for various classes

0. INSTALLATION

If you have the space I strongly recommend you just run

$ sudo apt-get install texlive-full

No matter what you need biber and evince

$ sudo apt-get install biber

$ sudo apt-get install evince

If you don't have the space to install texlive-full you can do

$ sudo apt-get install texlive

which installs just the basic packages. If you want other packages you need to manually 
install said packages. Here's an example on installing enumitem.sty

First download the .sty
then run the following commands

$ cd /usr/local/share/texmf/

$ sudo mkdir tex

$ cd tex

$ sudo mkdir latex

$ cd latex

$ sudo mkdir enumitem

$ cd enumitem

$ sudo mv /path/to/download/enumitem.sty ./

$ sudo mktexlsr

That will manually install enumitem. Repeat as new package errors come up.

In the Help folder you will find tex2pdf. Use that to compile the main tex files. I typically copy that file into the sub folders and run 

./tex2pdf main.tex

if you need to use biber you will run 

./tex2pdf main.tex usebiber