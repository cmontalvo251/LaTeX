Using PreTeXt on Ubuntu 24.03

1.) First install pretext

pip3 install pretext

If this gives you an error about breaking system packages go ahead and do that

pip3 install pretext --break-system-packages

2.) Then open ~/.bashrc and add the following line of code

PATH+='~/.local/bin'

this way your terminal can find pretext

3.) Oscar Levin has created a pretext-tools in vs code so grab that from the extension tab

4.) You need to have a 'source' folder in the repo with all your .ptx files.

5.) <!--This is how you make a comment in PreTeXt -->

6.) Running 'pretext build pdf' will compile your project into a pdf.   

7.) Running 'pretext build html' will build your project into an html file 

8.) but you need npm first so run 'sudo apt install npm'

9.) You may need to run 'sudo apt update' and 'sudo apt upgrade' first of course

10.) I'd recommend creating an 'output' folder an 'assets' folder 

11.) and a 'generated-assets' folder
