#!/bin/bash

# ベースディレクトリ（このスクリプトの位置）
BASE_DIR="$HOME/dotfiles"

# .configディレクトリ内のリンク作成
mkdir -p "$HOME/.config/mise" "$HOME/.config/nvim/lua" "$HOME/.config/wezterm"

ln -sfn "$BASE_DIR/.config/mise/config.toml" "$HOME/.config/mise/config.toml"
ln -sfn "$BASE_DIR/.config/nvim/init.lua" "$HOME/.config/nvim/init.lua"
ln -sfn "$BASE_DIR/.config/nvim/lua/autocmds.lua" "$HOME/.config/nvim/lua/autocmds.lua"
ln -sfn "$BASE_DIR/.config/nvim/lua/keymaps.lua" "$HOME/.config/nvim/lua/keymaps.lua"
ln -sfn "$BASE_DIR/.config/nvim/lua/lsp_config.lua" "$HOME/.config/nvim/lua/lsp_config.lua"
ln -sfn "$BASE_DIR/.config/nvim/lua/options.lua" "$HOME/.config/nvim/lua/options.lua"
ln -sfn "$BASE_DIR/.config/nvim/lua/plugins.lua" "$HOME/.config/nvim/lua/plugins.lua"
ln -sfn "$BASE_DIR/.config/wezterm/wezterm.lua" "$HOME/.config/wezterm/wezterm.lua"

# $HOME直下のリンク作成
ln -sfn "$BASE_DIR/.zsh_alias" "$HOME/.zsh_alias"
ln -sfn "$BASE_DIR/.zshenv" "$HOME/.zshenv"
ln -sfn "$BASE_DIR/.zshrc" "$HOME/.zshrc"
ln -sfn "$BASE_DIR/init.sh" "$HOME/init.sh"
ln -sfn "$BASE_DIR/set_proxy.sh" "$HOME/set_proxy.sh"

echo "Completed!"

if [ -f ~/install.sh ]; then
    source ~/install.sh
fi
