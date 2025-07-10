#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias discord='discord --enable-features=UseOzonePlatform --ozone-platform=wayland'
alias neofetch='fastfetch'
alias batlife='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
# remember to do acpi -i burrs

export PATH=$PATH:/home/burrs/.spicetify

bind "set completion-ignore-case on"

# kitty is terminal god
export TERMCMD=kitty

# nvim is my path and shit of course
export EDITOR=nvim
# --- Yazi Setup ---

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd <"$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

# --- btop Setup ---
alias top='btop'
# --- hyprland Setup ---
alias hyprland='prime-run hyprland'
