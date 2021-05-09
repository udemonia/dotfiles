HOST_NAME=Brandon

source ~/.nvm/nvm.sh
nvm use stable
shopt -s autocd
shopt -s histappend

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export PATH=$PATH:$HOME/bin

export HISTSIZE=5000
export HISTFILESIZE=10000

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

txtred='\e[0;34m' # Red
txtgrn='\e[0;32m' # Green
bldgrn='\e[1;32m' # Bold Green
bldpur='\e[1;35m' # Bold Purple
txtrst='\e[0m'    # Text Reset
bldgreen='\e[1;32m' # boldgreen
hibldgreen='\e[0;92m'

emojis=("👾" "🌐" "🎲" "🌍" "🧠" "🤡" "🙅‍♂️" "🤦‍♂️" "🍀" "🪐" "🔥" "✅" "🥶" "😀" "🤓" "😈" "👋" "💥" "💡")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}

print_before_the_prompt () {
    dir=$PWD
    home=$HOME
    dir=${dir/"$HOME"/"~"}
    printf "\n $txtred%s: $bldpur%s $txtgrn%s\n$txtrst" "$HOST_NAME" "$dir" "$(vcprompt)"
}

PROMPT_COMMAND=print_before_the_prompt
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
PS1="$EMOJI $"

fortune | cowsay -f tux

function mkcd()
{
	mkdir $1 && cd $1
}

# -------
# Aliases
# -------
alias nodeCourse='cd /Users/brandonlambert/dev/JavaScript/node/node-course'
alias 🍺="git checkout -b drunk"
alias a='code .'
alias python='python3'
alias c='code .'
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337"
alias ns='npm start'
alias start='npm start'
alias nr='npm run'
alias nrd='npm run dev'
alias run='npm run'
alias nis='npm i -S'
alias l="ls" # List files in current directory
alias la="ls -alhF" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias bls="ls -alhF"
alias lorem="echo Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
alias nodecode="cd /Users/brandonlambert/dev/javaScript/node"


# ----------------------
# Git Aliases 🔫
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias gi='git init'
alias gl='git log'
alias gp='git pull'
alias gpsh='git push'
alias gss='git status -s'
alias gpo='git push origin master'
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
alias gba='git branch -a'

#--------------------------
#     🐳 Docker Aliases 🐳
#--------------------------

alias exec='docker-compose exec web sh'
alias dcu='docker-compose up'
alias dcd='docker-compose down' # deletes the docker container and network but not the image
alias dcps='docker-compose ps' # name of the service state ports
alias dcub='docker-compose up --build' # bring the compose up and rebuild from Dockerfile

#--------------------------
#    Node Notes Aliases
#--------------------------
alias mynotes ='cd /Users/brandonlambert/dev/javaScript/node/node-course/note-app'
alias ip='ipconfig getifaddr en0'
alias publicip='curl ifconfig.me'


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

