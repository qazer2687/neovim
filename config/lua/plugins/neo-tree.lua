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
    vim.api.nvim_set_hl(0, "NeoTreeStatusLine", { fg = "NONE", bg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeStatusLineNC", { fg = "NONE", bg = "NONE" })
  end,
  config = function()
    require("neo-tree").setup({
      source_selector = {
        winbar = false,
        statusline = false,
      },
    })
    vim.schedule(function()
      vim.cmd("Neotree")
    end)
  end,
}