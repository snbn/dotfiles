#
# ~/.bash_profile
#

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

export VISUAL=/usr/bin/nvim
export EDITOR=/usr/bin/nvim

[[ -f ~/.bashrc ]] && . ~/.bashrc

. "$HOME/.cargo/env"

# >>> coursier install directory >>>
export PATH="$PATH:$HOME/.local/share/coursier/bin"
# <<< coursier install directory <<<

export PATH="$PATH:$HOME/.local/bin"

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
