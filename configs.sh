# execute this file to install all of the configs
# will be updated to automate as much as possible 
# in the future!

# theme name
theme="hipster"
manager="oh-my-zsh"

# put all the files in home
for file in $(ls)
do
	if [ $file != `basename "$0"` ]; then	# ignore this script
		cp $file ~/.$file
	fi
done

# source the zsh config
if [ -d ~/.$manager ];
then
	mv ~/.$theme.zsh-theme ~/.$manager/themes/$theme.zsh-theme
	source ~/.zshrc
else
	echo "Install oh-my-zsh!"	# implement this
fi
