
# my home directory
export MY_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# source vim script to make vimrc and plugin to take effect
cd $MY_HOME > /dev/null
source .vim/vim.sh
cd - > /dev/null

# grep --exclude-dir option, to ignore some directorys
alias grep="grep --exclude-dir=\.git --exclude-dir=\.svn --color=auto"
