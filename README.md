## run js scripts from terminal, using import and await out if box
### will run from any dir
```bash
# from home dir
cd ~/
# create .js dir, and cd into
mkdir && cd .js
# clone into .js
git clone this/repo .
# install dependencies
npm i
# make hello executable
chmod +x hello
# add source
[ -f "$HOME/.bashrc" ] && echo path+=~/.js >> "$HOME/.bashrc" && source "$HOME/.bashrc"
[ -f "$HOME/.zshrc" ] && echo path+=~/.js >> .zshrc && source "$HOME/.zshrc"
```

now run hello from the terminal..

copy and paste the hello file to any name and the make it executable
```bash
chmod +x [your-script-name]
# then run it with
[your-script-name]
```
