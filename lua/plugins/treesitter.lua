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
					"json",
					"javascript",
					"typescript",
					"tsx",
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
					"hcl",
				},
				auto_install = false,
			})
		end
	}
}
