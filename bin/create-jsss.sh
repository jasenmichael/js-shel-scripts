echo $0
echo $1
echo $2
echo $3

if [ -z "$1" ]; then
    echo "No argument supplied"
    exit 2
else
    cp $HOME/.js/bin/boiler $HOME/.js/$1
    chmod +x $HOME/.js/$1
    echo open a new terminal and run $1
    code $1
fi
