require("options")
require("plugins")
require("lsp_config")
require("tokyonight").setup({
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
        comments = { italic = true, },
    },
})
vim.cmd[[colorscheme tokyonight-night]]

require("lsp-inlayhints").setup()
require("keymaps")

