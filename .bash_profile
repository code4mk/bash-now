# mode status
# bash -l
echo "Bash Now by @code4mk"
echo "This ia active mode bash_profile"

# bash-code directory
export Bash_Me=./bash-code
export PATH=$Bash_Me:$PATH

# combine bashrc
if [ -f .bashrc ]; then
   . .bashrc;
fi

# all alias
for file in ./bash-alias/*; do
  . ${file}
done


# bash-code execute permission
for file in ./bash-code/*; do
  chmod +x ${file}
done
