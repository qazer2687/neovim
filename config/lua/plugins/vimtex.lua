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

    -- hide the issues window when running the compiler
    vim.g.vimtex_quickfix_mode = 0

    -- move by visual line inside tex and bib files
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "tex", "bib" },
      callback = function()
        vim.keymap.set("n", "j", "gj", { buffer = true })
        vim.keymap.set("n", "k", "gk", { buffer = true })
      end,
    })
  end,
}