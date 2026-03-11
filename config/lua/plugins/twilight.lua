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
  init = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.cmd("Twilight")
      end,
    })
  end,
}