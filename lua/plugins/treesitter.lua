return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
		lazy = false,

		config = function()
			require("nvim-treesitter").install({
				"javascript",
				"typescript",
				"json",
				"yaml",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"gitignore",
				"go",
				"gomod",
				"gosum",
				"gotmpl",
				"helm",
				"terraform",
				"python",
			})

			vim.api.nvim_create_autocmd("FileType", {
				callback = function()
					pcall(vim.treesitter.start)
					vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},
}
