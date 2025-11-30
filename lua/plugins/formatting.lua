return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>fw",
			function()
				require("conform").format({ async = false, lsp_fallback = false, timeout_ms = 500, quiet = false })
				vim.cmd("w")
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	-- This will provide type hinting with LuaLS
	---@module "conform"
	---@type conform.setupOpts
	opts = {
		notify_on_error = true,
		-- Define your formatters
		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			python = { "black" },
			lua = { "stylua" },
			yaml = { "yamlfmt" },
			json = { "prettier" },
			go = { "gofmt", "goimports" },
			terraform = { "terraform_fmt" },
			sh = { "shfmt" },
		},
		-- Set default options
		default_format_opts = {
			lsp_format = "never",
		},
		-- Set up format-on-save
		-- format_on_save = { timeout_ms = 500, lsp_format = "never" },
		-- Customize formatters
		formatters = {
			shfmt = {
				append_args = { "-i", "2" },
			},
		},
	},
	-- init = function()
	-- 	-- If you want the formatexpr, here is the place to set it
	-- 	vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	-- end,
}
