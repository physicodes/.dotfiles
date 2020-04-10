export ZSH=$HOME/.oh-my-zsh

# OS specific configuration goes in here
case `uname` in
  Darwin)
    # commands for OS X go here
    alias time=gtime
  ;;
  Linux)
    # commands for Linux go here
    chpwd() ls --color # ls after every cd
  ;;
esac

export TIME="TIME\nreal %es\nuser %Us \nsys  %Ss \nMEMORY\n%MKB\nCPU\n%P"

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/anaconda3/bin:$HOME/miniconda3/bin:$PATH

export PYENV=$HOME/.pyenv/versions
export VENV=$HOME/.virtualenvs

# virtual environment info
function virtualenv_info {
[ $VIRTUAL_ENV ] && echo ‘(‘`basename $VIRTUAL_ENV`’) ‘
}

plugins=(
	git # shows star when uncommited changes and provides some handy aliases
	tmux # gives tmux autostart config variable used below
 	virtualenv # allows me to show current env in theme
)

ZSH_TMUX_AUTOSTART="true"

ZSH_THEME="af-magic-cust"

HYPHEN_INSENSITIVE="true"

source $ZSH/oh-my-zsh.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jread/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jread/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jread/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jread/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
