--
--  To check the current status of your plugins, run
--    :Lazy
--  You can press `?` in this menu for help. Use `:q` to close the window
--  To update plugins you can run
--    :Lazy update
--
require('lazy').setup({
  require 'plugins/catppuccin',
  require 'plugins/gitsigns',
  require 'plugins/which-key',
  require 'plugins/telescope',
  require 'plugins/lspconfig',
  require 'plugins/vimtex',
  require 'plugins/conform',
  require 'plugins/cmp',
  require 'plugins/todo-comments',
  require 'plugins/mini',
  require 'plugins/treesitter',
  require 'plugins/indent_line',
  require 'plugins/lint',
  require 'plugins/autopairs',
  require 'plugins/twilight',
  require 'plugins/zen-mode',
  require 'plugins/neo-tree',
  require 'plugins/cord',
  require 'plugins/aw-watcher-nvim'
}, {
  -- Move the lazy lockfile so that it can be written to.
  lockfile = vim.fn.expand('~') .. '/.config/nvim/config/lazy-lock.json',

  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
