local on_attach = function(client, bufnr)
  -- lsp-inlayhintsの'on_attach'関数を呼び出す
  require("lsp-inlayhints").on_attach(client, bufnr)
end

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"pyright",
		"lua_ls",
	},
})

require("lspconfig").pyright.setup({
    on_attach = on_attach
})
require("lspconfig").lua_ls.setup({})

--local null_ls = require("null-ls")
--null_ls.setup({
--	sources = {
--		null_ls.builtins.formatting.black, -- python formatter
--		null_ls.builtins.formatting.isort, -- python import sort
--		null_ls.builtins.formatting.stylua, -- lua formatter
--		null_ls.builtins.diagnostics.luacheck, -- lua linter
--	},
--})
require("lspconfig").rust_analyzer.setup ({
    on_attach = on_attach,
})

-- Set up nvim-cmp.
local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			-- for luasnip
			require("luasnip").lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-i>"] = cmp.mapping.select_prev_item(),
        ["<C-k>"] = cmp.mapping.select_next_item(),
        ['<C-l>'] = cmp.mapping.complete(),
        ['<C-j>'] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" }, -- for luasnip
	}, {
		{ name = "buffer" },
	}),
})
