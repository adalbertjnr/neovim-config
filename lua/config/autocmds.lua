vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#444444", fg = "#ffffff" })

vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "YankHighlight",
      timeout = 50,
    })
  end,
})
