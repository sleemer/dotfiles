. $(brew --prefix)/etc/profile.d/z.sh 

# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
# Add ruby tools
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/3.3.0/bin:$PATH"
# Add dotnet tools
export PATH="${HOME}/.dotnet/tools:$PATH"
# Add krew (plugin manager for kubectl)
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
# Add tmuxifier
export PATH="$HOME/.tmux/plugins/tmuxifier/bin:$PATH"

# Set neovim as a default editor
export EDITOR='nvim'

# Initialize starship command prompt
eval "$(starship init zsh)"

# Initialize tmuxifier
eval "$(tmuxifier init -)"

# Initialize zsh plugins
if type brew &>/dev/null; then
  source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit && compinit
fi

# Aliases
alias ls='ls --color'
alias ll='ls --color -lA'

# History setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
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

# Complition styling
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Fuzzy search
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
eval "$(fzf --zsh)"
