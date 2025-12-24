vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")

vim.keymap.set("n", "<leader>q", ":q<CR>")

vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>l", "<C-w>l")

vim.keymap.set("n", "<leader>v", "<C-w>v<C-w>l")
vim.keymap.set("n", "<leader>s", "<C-w>s<C-w>j")

vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

local function toggle()
	local word = vim.fn.expand("<cword>")
	if word == "true" then
		vim.cmd("normal! ciwfalse")
	elseif word == "false" then
		vim.cmd("normal! ciwtrue")
	end
end

vim.keymap.set("n", "<space>i", toggle, { noremap = true, silent = true })
