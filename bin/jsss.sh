# cd in home dir
cd $HOME
# create .js dir, and cd into
# echo $1

INSTALLDIR=$HOME/.js
REPO=$HOME/dev/js-shell-scripts

# if --reinstall passed, delete dir
if [ $@ ] && [ $1 = '--reinstall' ]; then

    read -p "Are you sure(this will remove ~/.js) (y/n)?" REPLY
    echo # (optional) move to a new line
    if [ $REPLY = "y" ]; then
        echo Reinstalling...
        rm -rf ~/.js
    else
        echo Cancelled Reinstalation...
        exit 0
    fi

fi

if [ "$(ls -A $INSTALLDIR 2>/dev/null)" ]; then
    echo "$INSTALLDIR exits
    remove ~/.js and retry,
    or run
    npx jasenmichael/js-shell-scripts   --reinstall"
    exit 0

else
    mkdir $INSTALLDIR 2>/dev/null #echo ".js not empty,\r\n
    cd $HOME/.js
    # clone into .js
    echo Installing jsss to ~/.js
    git clone $REPO $INSTALLDIR 2>/dev/null # change name to js-shell-script
fi

echo "install dependencies"
npm i 2>/dev/null
# make hello executable
chmod +x $HOME/.js/hello

# add source
[ -f "$HOME/.bashrc" ] &&
    echo path+=~/.js >>"$HOME/.bashrc" 2>/dev/null &&
    echo "alias create-jsss='$INSTALLDIR/bin/create-jsss.sh'" >>"$HOME/.bashrc" 2>/dev/null

[ -f "$HOME/.zshrc" ] &&
    echo path+=~/.js >>"$HOME/.zshrc" 2>/dev/null &&
    echo "alias create-jsss='$INSTALLDIR/bin/create-jsss.sh'" >>"$HOME/.zshrc" 2>/dev/null

echo '================================
# To Use:
# open a new terminal and run: hello
# this is a sample provided script in ~/.js/hello

# all scripts in ~/.js with the sample top 2 lines will run by name

# create a new script by copying the hello script and edit.
# or run "create-jsss [your_script_name]" to create, source, and open the script for editing.
# the script will be located at ~/.js/[your_script_name]
================================
'

code . hello
# code $HOME/.js $HOME/.js/hello

# source added path
eval "$(cat ~/.bashrc | tail -n +10)" 2>/dev/null
eval "$(cat ~/.zshrc | tail -n +10)" 2>/dev/null
