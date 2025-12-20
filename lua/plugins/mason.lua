return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"gh_actions_ls",
				"lua_ls",
				"gopls",
				"bashls",
				"helm_ls",
				"terraformls",
				"yamlls",
				"tflint",
				"pyright",
				"bashls",
				"ts_ls",
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"pylint",
				"shellcheck",
				"tflint",
				"yamllint",
				"eslint_d",

				"goimports",
				"prettier",
				"shfmt",
				"stylua",
				"black",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "gca", vim.lsp.buf.code_action, {})

			vim.keymap.set("n", "gs", vim.diagnostic.open_float, {})
			vim.keymap.set("n", "gl", vim.diagnostic.setloclist, {})
		end,
	},
}
