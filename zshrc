. $HOMEBREW_PREFIX/etc/profile.d/z.sh
# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
# Add dotnet tools
export PATH="${HOME}/.dotnet/tools:$PATH"
# Add go tools
export PATH="${HOME}/go/bin:$PATH"
# Drop duplicate entries when one shell starts another
typeset -U path fpath

# Set neovim as a default editor
export EDITOR='nvim'

# Initialize starship command prompt
eval "$(starship init zsh)"

# Initialize completions and suggestions
FPATH=$HOMEBREW_PREFIX/share/zsh-completions:$FPATH
autoload -Uz compinit && compinit
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Aliases
alias ls='ls --color'
alias ll='ls --color -lA'

# History setup
HISTFILE=$HOME/.zhistory
SAVEHIST=10000
HISTSIZE=11000
setopt appendhistory
setopt sharehistory
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_verify
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# Completion styling
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Fuzzy search
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
eval "$(fzf --zsh)"

# Keep last: it has to wrap every widget defined above
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
