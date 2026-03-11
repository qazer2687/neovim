return {
  "folke/twilight.nvim",
  opts = {
    context = 0,       -- no extra lines beyond the current treesitter node
    treesitter = true,
    expand = {
      "function",
      "method",
    },
  },
}