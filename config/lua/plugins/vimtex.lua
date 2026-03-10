return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "sioyek"
    vim.g.vimtex_view_sioyek_options = string.format(
    '--inverse-search "NVIM_LISTEN_ADDRESS=%s nvim --headless -c \\"VimtexInverseSearch %%2 \'%%1\'\\""',
    vim.fn.serverlist()[1]
    )
  end,
}