return {
	{
		"voldikss/vim-floaterm",
		config = function()
			vim.keymap.set("n", "<C-S-T>", "<Cmd>FloatermNew<CR>", {})
			vim.keymap.set("n", "<C-S-J>", "<Cmd>FloatermToggle<CR>", {})
			vim.keymap.set("t", "<C-S-J>", "<C-\\><C-n><Cmd>FloatermToggle<CR>", {})
			vim.keymap.set("t", "<C-S-L>", "<Cmd>FloatermNext<CR>", {})
			vim.keymap.set("t", "<C-S-H>", "<Cmd>FloatermPrev<CR>", {})
		end
	},
}
