return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"gopls",
					"helm_ls",
					"html",
					"jsonls",
					"terraformls",
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.jsonls.setup({
				capabilities = capabilities,
			})

			lspconfig.yamlls.setup({
				capabilities = capabilities,

				settings = {
					yaml = {
						validate = true,
						completion = true,
						schemaStore = {
							enable = false, -- disable built-in schema store
							url = "", -- required when manually setting schemas
						},
						schemas = {
							["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
						},
					},
				},
			})

			lspconfig.helm_ls.setup({
				capabilities = capabilities,
			})

			lspconfig.terraformls.setup({
				capabilities = capabilities,
			})

			lspconfig.gopls.setup({
				cmd = { "gopls" },
				capabilities = capabilities,
				filetypes = { "go", "gomod", "gowork", "gotmpl" },
				settings = {
					gopls = {
						completeUnimported = true,
						usePlaceholders = false,
						analyses = { unusedparams = true },
						staticcheck = true,
						gofumpt = false,
					},
				},
			})
			vim.keymap.set("n", "gh", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
			vim.keymap.set("n", "gr", vim.lsp.buf.references, {})

			vim.keymap.set("n", "gs", vim.diagnostic.open_float, {})
			vim.keymap.set("n", "gl", vim.diagnostic.setloclist, {})
		end,
	},
}
