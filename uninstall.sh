echo "bash-now is uninstalling...."
echo "Done Boss! >>  Try again"
echo "https://github.com/code4mk/bash-now"

if [ -d ~/bash-codes ]; then
   rm -rf ~/bash-codes
fi

if [ -d ~/bash-default ]; then
   cp ~/bash-default/.bashrc ~/.bashrc
   cp ~/bash-default/.bash_profile ~/.bash_profile
   rm -rf ~/bash-default
fi

if [ -d ~/bash-aliass ]; then
   rm -rf ~/bash-aliass
fi
