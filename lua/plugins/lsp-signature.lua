return {
	"ray-x/lsp_signature.nvim",
	event = "LspAttach",
	opts = {
		handler_opts = {
			border = "single", -- double, rounded, single, shadow, none, or a table of borders
		},
		always_trigger = true,
		hint_enable = false,
	},
}
