. /opt/homebrew/etc/profile.d/z.sh

# Aliases
alias ls='ls -G'
alias ll='ls -lG'

# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
# Add dotnet tools
export PATH="${HOME}/.dotnet/tools:$PATH"
# Add krew (plugin manager for kubectl)
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Initialize starship command prompt
eval "$(starship init zsh)"

# Initialize zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

