vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true

vim.opt.autoindent = true

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

vim.opt.guicursor = ""
vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 10
vim.opt.updatetime = 500

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#bbbbbb" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3c3836" })
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#444444", fg = "#ffffff" })
