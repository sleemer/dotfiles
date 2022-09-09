. /usr/local/etc/profile.d/z.sh

# Aliases
alias ls='ls -G'
alias ll='ls -lG'

# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# Initialize starship command prompt
eval "$(starship init zsh)"

# Initialize zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

