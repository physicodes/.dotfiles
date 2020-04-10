# My additions

# Autostart X at login
# (for systems with no login manager)
# if [[ "$(tty)" == '/dev/tty1' ]]; then
#     exec startx
# fi

# Make wal changes persist
# (for systems taking the colorscheme from pywal)
# WALPALETTE="~/.cache/wal/sequences"
# if [ -f "$WALPALETTE" ];
# then
#     (cat ~/.cache/wal/sequences &)
# fi

# virtual environment info
function virtualenv_info {
[ $VIRTUAL_ENV ] && echo ‘(‘`basename $VIRTUAL_ENV`’) ‘
}

export ZSH="$HOME/.oh-my-zsh"

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

export PYENV=$HOME/.pyenv/versions
export VENV=$HOME/.virtualenvs

export PATH=$PATH:$HOME/Documents/Coding/scripts
export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_THEME="af-magic-cust"

HYPHEN_INSENSITIVE="true"

plugins=(
	git # shows star when uncommited changes and provides some handy aliases
	tmux # gives tmux autostart config variable used below
 	virtualenv # allows me to show current env in theme
)

ZSH_TMUX_AUTOSTART="true"

source $ZSH/oh-my-zsh.sh
