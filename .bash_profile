# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH

# Enable case-insensitive completion
bind -s 'set completion-ignore-case on'

#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\e[0;35m\]joe\[\e[0m\e[0;32m\]@\[\e[0m\e[0;36m\]MBPro:\[\e[0m\e[0;33m\]\w\[\e[0m\] \$ "
# OLD: "\e[0;35mjoe\e[0m\e[0;32m@\e[0m\e[0;36mMBPro:\e[0m\e[0;33m\w\e[0m \$ "
# = "joe@MBPro:~$  "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

fastfetch
. "$HOME/.cargo/env"
export PATH="Users/josephhendrix/.spicetify:/Users/josephhendrix/nvim-macos/bin:$PATH"

eval "$(/usr/local/bin/brew shellenv)"

alias imgRecord="ssh joepi@192.168.0.46"
. "$HOME/.cargo/env"
export PATH=$PATH:/Users/josephhendrix/.spicetify
source /Users/josephhendrix/alacritty/extra/completions/alacritty.bash

alias python="python3"

alias gitlog="git log --all --decorate --oneline --graph"

alias sketchybar="brew services start sketchybar"
alias sketchystop="brew services stop sketchybar"

alias sha="python sha.py"

fixaudio() {
	sudo rm /Library/Preferences/Audio/com.apple.audio.DeviceSettings.plist
	sudo rm /Library/Preferences/Audio/com.apple.audio.SystemSettings.plist
	echo "cleared plist files"
	sudo killall coreaudiod
	echo "killed audio drivers"
}

alias respice="spicetify backup apply"

updatedots() {
	sudo cp -R ~/.config/* ~/dots/config/
	sudo cp ~/.bash_profile ~/dots/
	echo "copied dotfiles to repository"
}

mkcd() {
	mkdir -p -- "$1" && cd -P "$1" && echo "moved to new directory: $1"
}
