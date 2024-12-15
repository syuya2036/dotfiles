require("options")
require("plugins")
require("lsp_config")
require("tokyonight").setup({
    transparent = true,
    styles = {
        sidebars = "transparent",
        floats = "transparent",
        comments = { italic = false },
    },
})
vim.cmd[[colorscheme tokyonight-night]]
vim.cmd [[highlight Comment guifg=#E0AF68]]
vim.cmd [[highlight LineNr guifg=#646464]]
require("lsp-inlayhints").setup()
require("keymaps")
local ht = require('haskell-tools')
vim.opt.guicursor = "n-v-c:block,i:block"
