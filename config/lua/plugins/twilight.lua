return {
  "folke/twilight.nvim",
  opts = {},
  init = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.cmd("Twilight")
      end,
    })
  end,
}