return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      -- A list of parser names, or "all" (the listed parsers MUST always be installed)
      ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "go", "python", "html", "rust" },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
