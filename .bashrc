
# my home directory
export MY_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# terminal 256 color enable
if [ "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi

# source vim script to make vimrc and plugin to take effect
cd $MY_HOME > /dev/null
source .vim/vim.sh
cd - > /dev/null

# alias set
# grep --exclude-dir option, to ignore some directorys
alias grep="grep --exclude-dir=\.git --exclude-dir=\.svn --color=auto"

# git init alias, config local user to mine by default, can not take effect, so use export function instead
# alias gi='init(){ git init;git config user.name IvyChen;git config user.email ivychend@gmail.com };init'
# git status
alias gst='git status'
alias glo='git log --oneline'
alias gdf='git diff'

###########################################################################################################
# function export 
###########################################################################################################

# git init, and then set user.name and user.email
function gi()
{
    git init
    git config user.name IvyChen
    git config user.email ivychend@gmail 
}
export -f gi

# goto dir if exit or mkdir and goto dir
function go()
{
    if [ -e $1 ] && [ ! -d $1 ]; then
        echo "parameter error"
    elif [ -d $1 ]; then
        cd $1
    else
        mkdir -p $1
        cd $1
    fi
}
export -f go
