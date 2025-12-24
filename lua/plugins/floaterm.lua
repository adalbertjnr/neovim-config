return {
	{
		"voldikss/vim-floaterm",
		config = function()
			local function floaterm_kill_and_cycle()
				vim.cmd("FloatermKill")

				local bufs = vim.fn["floaterm#buflist#gather"]()

				if #bufs == 0 then
					return
				end

				local prev = vim.fn["floaterm#buflist#prev"]()
				if prev ~= -1 then
					vim.cmd("FloatermPrev")
				else
					local next_buf = vim.fn["floaterm#buflist#next"]()
					if next_buf ~= -1 then
						vim.cmd("FloatermNext")
					end
				end
			end

			-- keymaps
			-- vim.keymap.set("n", "<C-S-T>", "<Cmd>FloatermNew<CR>", {})
			-- vim.keymap.set("t", "<C-S-T>", "<Cmd>FloatermNew<CR>", {})
			-- vim.keymap.set("n", "<C-S-J>", "<Cmd>FloatermToggle<CR>", {})
			-- vim.keymap.set("t", "<C-S-J>", "<Cmd>FloatermToggle<CR>", {})
			-- vim.keymap.set("t", "<C-S-L>", "<Cmd>FloatermNext<CR>", {})
			-- vim.keymap.set("t", "<C-S-H>", "<Cmd>FloatermPrev<CR>", {})
			-- vim.keymap.set("t", "<C-S-W>", floaterm_kill_and_cycle, {})

			-- keymaps
			vim.keymap.set("n", "<leader>tj", "<Cmd>FloatermToggle<CR>", {})
			vim.keymap.set("t", "<leader>tj", "<Cmd>FloatermToggle<CR>", {})
			vim.keymap.set("n", "<leader>tt", "<Cmd>FloatermNew<CR>", {})
			vim.keymap.set("t", "<leader>tt", "<Cmd>FloatermNew<CR>", {})
			vim.keymap.set("t", "<leader>tl", "<Cmd>FloatermNext<CR>", {})
			vim.keymap.set("t", "<leader>th", "<Cmd>FloatermPrev<CR>", {})
			vim.keymap.set("t", "<leader>tw", floaterm_kill_and_cycle, {})

			-- floating terminal title
			vim.g.floaterm_title = " Terminal(s) ($1/$2) "
			vim.g.floaterm_titleposition = "center"
		end,
	},
}
