return {}
-- return {
-- 	{
-- 		"nvimtools/none-ls.nvim",
-- 		config = function()
-- 			local null_ls = require("null-ls")
-- 			null_ls.setup({
-- 				sources = {
-- 					null_ls.builtins.formatting.stylua,

-- 					null_ls.builtins.completion.spell,

-- 					null_ls.builtins.formatting.terraform_fmt,

-- 					null_ls.builtins.formatting.prettier.with({
-- 						filetypes = { "json", "yaml" },
-- 					}),

-- 					null_ls.builtins.formatting.yamlfmt,
-- 					null_ls.builtins.diagnostics.yamllint,

-- 					null_ls.builtins.formatting.gofmt,
-- 					null_ls.builtins.formatting.goimports,
-- 					null_ls.builtins.diagnostics.golangci_lint,
-- 				},
-- 			})
-- 		end,
-- 	},
-- }
