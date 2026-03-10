return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "sioyek"
    vim.g.vimtex_callback_progpath = vim.v.progpath
    --vim.g.vimtex_view_sioyek_options = '--custom-color-mode --forward-search-file @tex --forward-search-line @line @pdf'
  end,
}