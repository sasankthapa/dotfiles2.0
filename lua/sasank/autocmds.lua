      -- format on save
      --vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = '*',
  command = "lua vim.lsp.buf.format()"
})
