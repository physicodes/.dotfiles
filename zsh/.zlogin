# Autostart X at login (for systems with no login manager)
if [[ "$(tty)" == '/dev/tty1' ]]; then
    exec startx
fi

# Make wal changes persist (for systems taking the colorscheme from pywal)
WALPALETTE="~/.cache/wal/sequences"
if [ -f "$WALPALETTE" ];
then
    (cat ~/.cache/wal/sequences &)
fi
