return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")
			local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

			null_ls.setup({
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ async = false })
							end,
						})
					end
				end,
				sources = {
					null_ls.builtins.formatting.stylua,

					null_ls.builtins.completion.spell,

					null_ls.builtins.formatting.terraform_fmt,

					null_ls.builtins.formatting.prettier.with({
						filetypes = { "json", "yaml" },
					}),

					null_ls.builtins.formatting.yamlfmt,
					null_ls.builtins.diagnostics.yamllint,

					null_ls.builtins.formatting.gofmt,
					null_ls.builtins.formatting.goimports,
					null_ls.builtins.diagnostics.golangci_lint,
				},
			})
		end,
	},
}
