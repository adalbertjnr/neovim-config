return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				highlight = {
					enable = true,
				},
				indent = { enable = true },
				autotag = { enable = true },
				ensure_installed = {
					"javascript",
					"typescript",
					"json",
					"yaml",
					"markdown",
					"markdown_inline",
					"bash",
					"lua",
					"dockerfile",
					"gitignore",
					"go",
					"gomod",
					"gosum",
					"gotmpl",
					"helm",
					"terraform",
					"hcl",
					"python",
				},
				auto_install = false,
			})
		end,
	},
}
