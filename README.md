## run js scripts from terminal, using import and await out if box

### features:
- automatically adds ~/.js to path in .bashrc and/or .zshrc
- runs chmod +x on each script created
- adds magic shebang to run each script with esm
- modules and top level await out of box for each created script.
- will run from any dir by script name
- no file extention needed


inslall with 
```bash
npx jasenmichael/js-shell-scripts#main
```

restart the terminal and run
```bash
hello
```
this will run the sample script located at ~/.js/hello


after installation you can run the below command to create another script
```bash
create-jss [script_name]
```
then run it immediatly with
```bash
[script_name]
```


Note: to install and use packages for created scripts, install them from within the "~/.js" directory





TODO:
create a script install package(s) and automatically import to your newly created script
```bash
create-jsss [script_name] ["command to run in ~/.js dir"]
```
Example
```bash
create-jss [my_new_express_app] npm i express body-parser
```

add - npx js-shell-script update
