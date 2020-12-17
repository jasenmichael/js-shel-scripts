if [ -z "$1" ]; then
    echo "No argument supplied"
    exit 2
else
    cp $HOME/.js/bin/boiler $HOME/.js/$1
    chmod +x $HOME/.js/$1
    echo open a new terminal and run $1
    code $HOME/.js/$1
fi
