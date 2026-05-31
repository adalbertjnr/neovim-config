return {
	"ray-x/lsp_signature.nvim",
	event = "InsertEnter",
	opts = {
		handler_opts = {
			border = "single", -- double, rounded, single, shadow, none, or a table of borders
		},
		always_trigger = true,
		hint_enable = false,
	},

	config = function(_, opts)
		local exclude = { terraform = true, tf = true }
		if exclude[vim.bo.filetype] then
			return
		end

		require("lsp_signature").setup(opts)
	end,
}
