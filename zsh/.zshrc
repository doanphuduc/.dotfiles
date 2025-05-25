# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

ZSH_THEME="dracula"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# Disable zsh update

source $ZSH/oh-my-zsh.sh
export DISABLE_AUTO_UPDATE=true

##### VIM STUFF
bindkey '\e' vi-cmd-mode

# Remove mode switching delay.
KEYTIMEOUT=1

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
      [[ $1 = 'block' ]]; then
    echo -ne '\e[2 q'

  elif [[ ${KEYMAP} == main ]] ||
        [[ ${KEYMAP} == viins ]] ||
        [[ ${KEYMAP} = '' ]] ||
        [[ $1 = 'beam' ]]; then
    echo -ne '\e[1 q'
  fi
}
zle -N zle-keymap-select

# Use beam shape cursor on startup.
echo -ne '\e[1 q'

export EDITOR='nvim'

# No shared history between tmux windows, panes
setopt nosharehistory
setopt no_share_history
unsetopt share_history

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vi="nvim"
alias vim="nvim"
alias reload='source ~/.zshrc'

KEYTIMEOUT=1
source ~/.zshrc.local

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/pduc/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/pduc/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/pduc/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/pduc/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export OPENAI_API_KEY="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"

