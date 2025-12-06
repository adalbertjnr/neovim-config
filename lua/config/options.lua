vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.signcolumn = "yes"

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#bbbbbb", bg = "#1f1f1f" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#5a5a5a", bg = "#1f1f1f" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3c3836" })
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#444444", fg = "#ffffff" })
