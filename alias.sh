alias cls=clear

alias vim=nvim


#Git short commands
alias gs="git status"
alias gpr="git pull --rebase"
alias gd="git diff"
alias gc="git commit"
alias gco="git checkout"
alias gb="git branch"
alias gm="git merge"
alias gl="git log"
alias gld="git lg"

alias mux="tmux -2 attach"
alias ta="tmux a -t"
alias tls="tmux ls"

alias szsh="source ~/.zshrc"
alias ezsh="vim ~/.zshrc"


#Key bindings

# Standard and additional keybindings:
#   ctrl + u     : clear line
#   ctrl + w     : delete word backward
#   alt  + d     : delete word
#   ctrl + a     : move to beginning of line
#   ctrl + e     : move to end of line (e for end)
#   alt/ctrl + f : move to next word (f for forward)
#   alt/ctrl + b : move to previous word (b for backward)
#   ctrl + d     : delete char at current position (d for delete)
#   ctrl + k     : delete from character to end of line
#   alt  + .     : cycle through previous args

# In menu completion, the Return key will accept the current selected match
bindkey -M menuselect '^M' .accept-line

# alt-x : insert last command result
zmodload -i zsh/parameter
insert-last-command-output() {
  LBUFFER+="$(eval $history[$((HISTCMD-1))])"
}
zle -N insert-last-command-output
#bindkey '^[x' insert-last-command-output
bindkey '≈' insert-last-command-output

# ctrl+b/f or ctrl+left/right : move word by word (backward/forward)
bindkey '^b' backward-word
bindkey '^f' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Ctrl+space : print Git/Svn status or list files with ls
vcs-status() {
	\print; zle accept-line;
	if [ -d .git ]; then
		git status --short
	else
		l # use the "l" alias for ls
	fi
	zle accept-line
}
zle -N vcs-status
bindkey '^ ' vcs-status

# Enable ctrl+s in Vim by disabling flow control and sending of start/stop characters
# See: man stty (I don't know if it causes conflicts...)
stty -ixon -ixoff

