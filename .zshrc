HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# bindkey -e

autoload -U compinit; compinit

setopt prompt_subst

# Enable colors
autoload -U colors && colors

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats ' on %b'

# Prompt 
RPROMPT='%f${vcs_info_msg_0_}'
PROMPT='%n in %F{#539987}(%F{#1C6E8C}%2~%F{#539987}) %F{#A7C6DA} '

# Default editing editor
export EDITOR=nvim
export VISUAL=nvim

# nvim as my manpager
export MANPAGER="nvim -c 'Man!' -o -"

# Laravel 
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

FUNC_VAR=$HOME/.config/zsh/functions.zsh 

if [ -f $FUNC_VAR ]; then
  source $FUNC_VAR

  # Aliases
  source_file aliases.zsh

  # Plugins
  zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
  fpath=($HOME/.config/plugins/zsh-completions/src $fpath)
fi
