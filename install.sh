
echo "bash-now is Installing..."

if [ -d ~/bash-code ]; then
   echo "~/bash-code bash coding"
else
  mkdir ~/bash-code
fi

if [ -d ~/bash-default ]; then
   echo "~/bash-default by default"
else
  mkdir ~/bash-default
fi

if [ -d ~/bash-alias ]; then
   echo "~/bash-alias all aliases"
else
  mkdir ~/bash-alias
fi


for file in ./bash-code/*; do
  cp $file ~/bash-code
done

for file in ./bash-alias/*; do
  cp $file ~/bash-alias
done

if [ -f ~/.bashrc ]; then
   mv ~/.bashrc ~/bash-default/.bashrc
fi

if [ -f ~/.bash_profile ]; then
   mv ~/.bash_profile ~/bash-default/.bash_profile
fi


cp ./.bashrc ~/.bashrc
cp ./.bash_profile ~/.bash_profile
echo "Done >> Thanks Boss"
echo "Hit terminal -> bash -l"
