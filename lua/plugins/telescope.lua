return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},

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
		vim.keymap.set("n", "<leader>fc", builtin.git_commits, { desc = "Git commits" })
		vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "LSP References" })
		vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Diagnostics" })
		vim.keymap.set("n", "<leader>fi", builtin.lsp_implementations, { desc = "LSP Implenentations" })
		vim.keymap.set("n", "<leader>ft", builtin.lsp_definitions, { desc = "LSP Type Definitions" })
	end,
}
