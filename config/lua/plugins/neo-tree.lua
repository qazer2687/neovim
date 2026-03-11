-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  opts = {},

  -- clear title in statusbar
  vim.api.nvim_create_autocmd("FileType", {
    pattern = "neo-tree",
    callback = function()
      vim.opt_local.statusline = " "
    end,
  })
  -- Display neotree on launch.
  config = function()
    vim.schedule(function()
      vim.cmd("Neotree")
    end)
  end,
}
