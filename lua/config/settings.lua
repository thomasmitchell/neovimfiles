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
vim.opt.listchars = { trail = " " }
vim.api.nvim_set_hl(0, 'Whitespace', { bg = 'DarkRed' })

-- Don't allow arrow keys in insert mode
vim.keymap.set('i', '<up>', '<nop>')
vim.keymap.set('i', '<down>', '<nop>')
vim.keymap.set('i', '<right>', '<nop>')
vim.keymap.set('i', '<left>', '<nop>')

-- when going between lines, respect lines created by wrapped text
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

vim.keymap.set('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float(nil, { border = "rounded" })<cr>')
