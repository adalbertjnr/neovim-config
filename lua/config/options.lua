vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.signcolumn = "yes"

vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#bbbbbb" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffffff" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3c3836" })
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#444444", fg = "#ffffff" })
