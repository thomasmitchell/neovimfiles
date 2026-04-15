return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = {"nvim-treesitter/nvim-treesitter"},
  event = "BufEnter",
  opts = function()
    local tsc = require("treesitter-context")
    return {}
  end,
  opts = {}
}
