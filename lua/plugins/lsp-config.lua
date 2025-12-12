return {
  'neovim/nvim-lspconfig',
  init = function()
    vim.lsp.enable('gopls')
    vim.lsp.enable('rust_analyzer')
    vim.lsp.enable('terraformls')
    vim.lsp.enable('pyright')
    vim.lsp.enable('yamlls')
    vim.lsp.enable('lua_ls')
    vim.lsp.enable('helm_ls')
  end
}
