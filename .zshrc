# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
export PATH="/opt/homebrew/bin:$PATH"export PATH="$PATH:/Users/shuya/Develop/flutter/bin"
export GOPATH=$HOME/Documents/go
export PATH=$PATH:$GOPATH/bin
if [ -f ~/set_proxy.sh ]; then
    source ~/set_proxy.sh
fi

export PATH="/Users/shuya/.local/bin:$PATH"
export _ANTIGEN_INSTALL_DIR=${HOME}/.local/bin
source $HOME/.local/bin/antigen.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=180'
# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    # Bundles from the default repo (robbyrussell's oh-my-zsh)
    git
    # Syntax highlighting bundle.
    zsh-users/zsh-syntax-highlighting
    # Fish-like auto suggestions
    zsh-users/zsh-autosuggestions
    # Extra zsh completions
    zsh-users/zsh-completions
    # z
    rupa/z z.sh
    # abbr
    olets/zsh-abbr@main
EOBUNDLES

# Load the theme
antigen theme candy

# Tell antigen that you're done
antigen apply
eval "$(~/.local/bin/mise activate zsh)"
PATH="$HOME/.cargo/bin:$PATH"

[ -f "/Users/shuya/.ghcup/env" ] && . "/Users/shuya/.ghcup/env" # ghcup-env
if [ -f ~/.zsh_alias ]; then
    source ~/.zsh_alias
fi

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

if [ -f ~/.zsh_token ]; then
    source ~/.zsh_token
fi
