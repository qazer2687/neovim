-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  opts = {},
  init = function()
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "*",
      callback = function()
        if vim.bo.filetype == "neo-tree" then
          vim.defer_fn(function()
            vim.opt_local.statusline = " "
          end, 50)
        end
      end,
    })
  end,
  config = function()
    require("neo-tree").setup({})
    vim.schedule(function()
      vim.cmd("Neotree")
    end)
  end,
}