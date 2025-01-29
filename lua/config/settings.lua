vim.opt.copyindent = true
vim.opt.number = true
vim.opt.shiftround = true
vim.opt.smartcase = true
vim.opt.swapfile = true
vim.opt.title = true
vim.opt.scrolloff=3
vim.opt.splitright=true

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

-- column length marker
vim.opt.colorcolumn = '80'
vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#465166' })

-- Don't allow arrow keys in normal mode
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('n', '<right>', '<nop>')
vim.keymap.set('n', '<left>', '<nop>')

-- when going between lines, respect lines created by wrapped text
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- don't open help when I fat-finger while hitting ESC
vim.keymap.set('!', '<F1>', '<nop>')
vim.keymap.set({'n', 'v'}, '<F1>', '<nop>')

-- show diagnostic in full - helpful for when it doesn't fit inline
vim.keymap.set('n', '<leader>di', '<cmd>lua vim.diagnostic.open_float(nil, { border = "rounded" })<cr>')

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

require("nvim-treesitter.configs").setup({
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "go", "python", "html", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = { enable = true },
  indent = { enable = true },

  textobjects = {
    lsp_interop = {
      enable = true,
      border = 'rounded',
      floating_preview_opts = {},
      peek_definition_code = {
        ["<leader>df"] = "@function.outer",
        ["<leader>dF"] = "@class.outer"
      }
    },
  },
})
