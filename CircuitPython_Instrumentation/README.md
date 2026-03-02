Using PreTeXt on Ubuntu 24.03

<!-- First install pretext -->

pip3 install pretext

If this gives you an error about breaking system packages go ahead and do that

pip3 install pretext --break-system-packages

<!-- Then open ~/.bashrc and add the following line of code -->

PATH+='~/.local/bin'

this way your terminal can find pretext

<!--Oscar Levin has created a 'pretext-tools' in vs code so grab that from the exta tab -->

<!--This is how you make a comment in PreTeXt -->

<!-- It's a much better idea to run 'pretext new' to create a new project. -->

You can try 'pretext init' to update an existing project but better to just start from scratch.

Running 'pretext new' defaults to 'pretext new book' and creates a new project

This creates all the req*.txt and project.ptx files as well as a bunch of stuff in source

Note that this also creates its own .git folder so if you're already in an existing repo make sure you delete that folder to preserve the old git url.

<!-- Running 'pretext build pdf' will compile your project into a pdf.   -->

You can also run 'pretext build print' and it will do the same thing

<!-- Running 'pretext build html' will build your project into an html file. -->

you can also run pretext build web and it will do the same thing

but you need npm first so run 'sudo apt install npm'

You may need to run 'sudo apt update' and 'sudo apt upgrade' first of course

'pretext view html' will open your newly created html or 'pretext view web'. 

Alternatively you can open the index.html file in the 

'output/web' folder and it will open in your default web browser

<!--In order to deploy you need to have your project.ptx file in the root dir -->

This means you need to edit the project.ptx file and then move it to the root dir
You'll see that there are a number of directions in the project.ptx file so it's pretty
straightforward

