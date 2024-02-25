#
# ~/.bash_profile
#
#
#
LANG-"en_US.utf8"
export LANG

export MOZ_ENABLE_WAYLAND=0
export MOZ_USE_XINPUT_2=1

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi


[[ -f ~/.bashrc ]] && . ~/.bashrc
