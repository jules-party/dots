#!/usr/bin/env zsh

env_setup() {
	PATH="${PATH}:${HOME}/.local/bin"
	PATH="${PATH}:${HOME}/.cargo/bin"
	EDITOR=vim
	VISUAL=vim
	BROWSER=/usr/bin/firefox
	DESKTOP_SESSION=dwm
}

alias_setup() {
	alias cd="z"
	alias ls="ls --color"
	alias l="ls -la"
	alias ll="ls -l"
	alias la="ls -a"
	alias vi="/usr/bin/vim"
	alias vim="/usr/bin/nvim"
}

prompt_setup() {
	# Starship
	eval "$(starship init zsh)"
	eval "$(zoxide init zsh)"

  # binded keys
  bindkey '^[[1;2D' backward-word
  bindkey '^[[1;2C' forward-word
}
