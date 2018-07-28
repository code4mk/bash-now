echo "bash-now is uninstalling...."
echo "Done Boss! >>  Try again"
echo "https://github.com/code4mk/bash-now"

if [ -d ~/bash-code ]; then
   rm -rf ~/bash-code
fi

if [ -d ~/bash-default ]; then
   cp ~/bash-default/.bashrc ~/.bashrc
   cp ~/bash-default/.bash_profile ~/.bash_profile
   rm -rf ~/bash-default
fi

if [ -d ~/bash-alias ]; then
   rm -rf ~/bash-alias
fi
