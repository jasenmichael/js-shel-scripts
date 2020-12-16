# cd in home dir
cd $HOME
# create .js dir, and cd into
mkdir $HOME/.js 2>/dev/null # hide if exist, TODO: check if empty
cd $HOME/.js
# clone into .js
git clone $HOME/dev/js-shell $HOME/.js # change name to js-shell-script
echo $PWD
# install dependencies
npm i
# make hello executable
chmod +x hello

# add source
# [ -f "$HOME/.bashrc" ] && echo path+=~/.js >>"$HOME/.bashrc" && source "$HOME/.bashrc"
# [ -f "$HOME/.zshrc" ] && echo path+=~/.js >>.zshrc && source "$HOME/.zshrc"

# TODO: add create-js-shell-script

# now run hello from the terminal..

# copy and paste the hello file to any name and the make it executable
# chmod +x [your-script-name]
# then run it with
# hello

# code hello
