return {
	"tpope/vim-commentary",
	config = function()
		vim.keymap.set("n", "<leader>c", "<Plug>CommentaryLine", { nowait = true })
		vim.keymap.set("v", "<leader>c", "<Plug>Commentary", {})
	end,
}
