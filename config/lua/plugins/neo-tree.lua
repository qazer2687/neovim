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
  cmd = 'Neotree',
  opts = {
    source_selector = {
      winbar = false,
      statusline = false,
    },
  },

  vim.api.nvim_set_hl(0, "NeoTreeStatusLine", { fg = "NONE", bg = "NONE" })
  vim.api.nvim_set_hl(0, "NeoTreeStatusLineNC", { fg = "NONE", bg = "NONE" })
  -- Display neotree on launch.
  config = function()
    vim.schedule(function()
      vim.cmd("Neotree")
    end)
  end,
}
