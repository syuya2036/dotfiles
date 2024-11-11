vim.keymap.set('n', '<C-e>', '$', {noremap = true})
vim.keymap.set('i', '<C-e>', '<ESC>$', {noremap = true})
vim.keymap.set('v', '<C-e>', '$', {noremap = true})

vim.keymap.set('n', '<C-a>', '^', {noremap = true})
vim.keymap.set('i', '<C-a>', '<ESC>^', {noremap = true})
vim.keymap.set('v', '<C-a>', '^', {noremap = true})

vim.keymap.set('n', '<C-g>', ':NERDTreeToggle', {noremap=true})
vim.keymap.set('i', '<C-g>', ':<ESC>NERDTreeToggle', {noremap=true})
vim.keymap.set('v', '<C-g>', ':NERDTreeToggle', {noremap=true})

vim.keymap.set('n', '<C-f>', ':NERDTree', {noremap=true})
vim.keymap.set('i', '<C-f>', ':<ESC>NERDTree', {noremap=true})
vim.keymap.set('v', '<C-f>', ':NERDTree', {noremap=true})

vim.keymap.set('i', '<C-c>', '<ESC>', {noremap = true})
vim.keymap.set('v', '<C-c>', '<ESC>', {noremap = true})

vim.keymap.set('n', '<C-w>', ':wq!', {noremap=true})
vim.keymap.set('i', '<C-w>', '<ESC>:wq!', {noremap=true})
vim.keymap.set('v', '<C-w>', ':wq!', {noremap=true})

vim.keymap.set('n', 'd', '"_d', {noremap = true})
vim.keymap.set('v', 'd', '"_d', {noremap = true})
vim.keymap.set('n', 'ld', '"_dd', {noremap = true})
vim.keymap.set('v', 'ld', '"_dd', {noremap = true})
vim.keymap.set('v', '<leader>d', '"+d', {noremap = true})
vim.keymap.set('n', '<leader>d', 'v"+d', {noremap = true})
-- 2. build-in LSP function
-- keyboard shortcut
vim.keymap.set('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', 'gf', '<cmd>lua vim.lsp.buf.formatting()<CR>')
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
vim.keymap.set('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
vim.keymap.set('n', 'gn', '<cmd>lua vim.lsp.buf.rename()<CR>')
vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
vim.keymap.set('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', 'g]', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', 'g[', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.api.nvim_command('hi Comment ctermfg=gray')
-- Normalモードで次の単語に移動
vim.keymap.set('n', '<C-w>', 'w', {noremap = true})

-- Normalモードで前の単語に移動
vim.keymap.set('n', '<C-b>', 'b', {noremap = true})

-- Insertモードで次の単語に移動
vim.keymap.set('i', '<C-w>', '<ESC>wi', {noremap = true})

-- Insertモードで前の単語に移動
vim.keymap.set('i', '<C-b>', '<ESC>bi', {noremap = true})

-- Visualモードで次の単語に移動
vim.keymap.set('v', '<C-w>', 'w', {noremap = true})

-- Visualモードで前の単語に移動
vim.keymap.set('v', '<C-b>', 'b', {noremap = true})
