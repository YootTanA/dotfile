#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /home/oat/.config/ps1

export EDITOR=nvim

alias vi=nvim
alias l='ls -rtl --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'


# pnpm
export PNPM_HOME="/home/oat/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
#
