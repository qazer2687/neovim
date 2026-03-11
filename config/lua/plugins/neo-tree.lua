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
  cmd = 'Neotree',
  init = function()
    vim.api.nvim_set_hl(0, "NeoTreeStatusLine", { link = "StatusLine" })
    vim.api.nvim_set_hl(0, "NeoTreeStatusLineNC", { link = "StatusLineNC" })
  end,
  opts = {
    source_selector = {
      winbar = false,
      statusline = false,
    },
  },
  config = function()
    vim.schedule(function()
      vim.cmd("Neotree")
    end)
  end,
}