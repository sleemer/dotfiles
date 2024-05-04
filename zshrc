. /usr/local/etc/profile.d/z.sh

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
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Aliases
alias ls='colorls --sort-dirs -1'
alias ll='colorls -lA --sd'

# History setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

