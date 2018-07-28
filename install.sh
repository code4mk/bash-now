
echo "bash-now is Installing..."

if [ -d ~/bash-codes ]; then
   echo "~/bash-codes bash coding"
else
  mkdir ~/bash-codes
fi

if [ -d ~/bash-default ]; then
   echo "~/bash-default by default"
else
  mkdir ~/bash-default
fi

if [ -d ~/bash-aliass ]; then
   echo "~/bash-aliass all aliases"
else
  mkdir ~/bash-aliass
fi


for file in ./bash-code/*; do
  cp $file ~/bash-codes
done

for file in ./bash-alias/*; do
  cp $file ~/bash-aliass
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
