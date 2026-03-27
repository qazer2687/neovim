return {
  'vyfor/cord.nvim',
   ---@type CordConfig
  opts = {
    enabled = true,
    log_level = vim.log.levels.OFF,
    editor = {
      client = 'neovim',
      tooltip = 'The Superior Text Editor',
      icon = nil,
    },
    display = {
      theme = 'default',
      flavor = 'dark',
      view = 'full',
      swap_fields = false,
      swap_icons = false,
    },
    timestamp = {
      enabled = true,
      reset_on_idle = false,
      reset_on_change = false,
      shared = false,
    },
    idle = {
      enabled = false,
    },
    text = {
      default = nil,
      workspace = function(opts) return '' end,
      viewing = function(opts) return 'Viewing a ' .. opts.filetype .. ' file' end,
      editing = function(opts) return 'Editing a ' .. opts.filetype .. ' file' end,
      file_browser = function(opts) return 'Browsing files' end,
      plugin_manager = function(opts) return 'Managing plugins' end,
      lsp = function(opts) return 'Configuring LSP' end,
      docs = function(opts) return 'Reading docs' end,
      vcs = function(opts) return 'Committing changes' end,
      notes = function(opts) return 'Taking notes' end,
      debug = function(opts) return 'Debugging' end,
      test = function(opts) return 'Testing' end,
      diagnostics = function(opts) return 'Fixing problems' end,
      games = function(opts) return 'Playing a game' end,
      terminal = function(opts) return 'Running commands' end,
      dashboard = 'Home',
    },
    buttons = nil,
    -- buttons = {
    --   {
    --     label = 'View Repository',
    --     url = function(opts) return opts.repo_url end,
    --   },
    -- },
    assets = nil,
    variables = nil,
    hooks = {
      ready = nil,
      shutdown = nil,
      pre_activity = nil,
      post_activity = nil,
      idle_enter = nil,
      idle_leave = nil,
      workspace_change = nil,
      buf_enter = nil,
    },
    extensions = nil,
    advanced = {
      plugin = {
        autocmds = true,
        cursor_update = 'on_hold',
        match_in_mappings = true,
        debounce = {
          delay = 50,
          interval = 750,
        },
      },
      server = {
        update = 'fetch',
        pipe_path = nil,
        executable_path = nil,
        timeout = 300000,
      },
      discord = {
        pipe_paths = nil,
        reconnect = {
          enabled = false,
          interval = 5000,
          initial = true,
        },
        sync = {
          enabled = true,
          mode = 'periodic',
          interval = 12000,
          reset_on_update = true,
          pad = true,
        },
      },
      workspace = {
        root_markers = {
          '.git',
          '.hg',
          '.svn',
        },
        limit_to_cwd = false,
      },
    },
  }
}