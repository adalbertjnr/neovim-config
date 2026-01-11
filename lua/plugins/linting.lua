return {
	"mfussenegger/nvim-lint",
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local lint = require("lint")
		lint.linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			-- go = { "golangcilint" },
			yaml = { "yamllint" },
			terraform = { "tflint" },
			python = { "pylint" },
			sh = { "shellcheck" },
		}

		lint.linters.yamllint.args = {
			"--format",
			"parsable",
			"-",
			"-d",
			"{extends: default, rules: {line-length: disable, comments: {min-spaces-from-content: 1}}}",
		}

		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "TextChanged" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint()
			end,
		})
	end,
}
