return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },

	opts = {
		defaults = {
			file_ignore_patterns = {
				".git/",
				".cache",
				"node_modules/",
				"vendor/",
				"dist/",
				"build/",
			},
		},
		pickers = {
			find_files = {
				hidden = true,
			},
			live_grep = {
				additional_args = function()
					return { "--hidden" }
				end,
			},
		},
	},

	config = function(_, opts)
		require("telescope").setup(opts)

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
	end,
}
