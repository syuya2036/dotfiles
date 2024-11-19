        vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use ({ 'projekt0n/github-nvim-theme' })
    use {
    'preservim/nerdtree',
        requires = {
            'ryanoasis/vim-devicons' -- NERDTreeでアイコンを表示するため
        },
    }

    use("mrcjkb/haskell-tools.nvim")

    use ({"folke/tokyonight.nvim"})
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/nvim-cmp")
    use('L3MON4D3/LuaSnip')

    use("neovim/nvim-lspconfig")
    --use("github/copilot.vim")
    use({"lvimuser/lsp-inlayhints.nvim"})
    use("onsails/lspkind.nvim")
    use({
	"Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
		 }
	end,
})
end)

