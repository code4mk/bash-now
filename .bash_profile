# mode status
# bash -l
echo "Bash Now by @code4mk"
echo "This ia active mode bash_profile"

depeen_os= true
# combine bashrc

if [ -f ~/.bashrc ]; then
   . ~/.bashrc;
fi

if $deepin_os ; then
   . ~/.bash_deepin;
fi

if [ -f ~/bash-alias/laravel ]; then
   . ~/bash-alias/laravel;
fi
