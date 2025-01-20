vim.opt.copyindent = true
vim.opt.number = true
vim.opt.shiftround = true
vim.opt.smartcase = true
vim.opt.swapfile = true
vim.opt.title = true
vim.opt.scrolloff=3

-- Tab stuff...
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Show trailing characters
vim.opt.list = true
vim.opt.listchars = { trail = " ", tab = "║ " }
vim.api.nvim_set_hl(0, 'Whitespace', { bg = 'DarkRed' })
vim.api.nvim_set_hl(0, 'Visual', { fg = '#e2ccfe', bg = '#c398fe' })

-- Don't allow arrow keys in insert mode
vim.keymap.set('i', '<up>', '<nop>')
vim.keymap.set('i', '<down>', '<nop>')
vim.keymap.set('i', '<right>', '<nop>')
vim.keymap.set('i', '<left>', '<nop>')

-- when going between lines, respect lines created by wrapped text
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

vim.keymap.set('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float(nil, { border = "rounded" })<cr>')

--stop shifting when diagnostic signs appear/disappear in gutter
vim.opt.signcolumn = "yes"

--autoformat golang on save
local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimports()
  end,
  group = format_sync_grp,
})
