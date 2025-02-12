return {
  'neovim/nvim-lspconfig',
  init = function()
    require'lspconfig'.gopls.setup{}
    require'lspconfig'.rust_analyzer.setup{}
    require'lspconfig'.terraformls.setup{}
    require'lspconfig'.pyright.setup{}
    require'lspconfig'.yamlls.setup{}
    require'lspconfig'.lua_ls.setup{}
    require'lspconfig'.helm_ls.setup{}
  end
}
