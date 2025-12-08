return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local function attach(bufnr)
			local api = require("nvim-tree.api")
			local view = require("nvim-tree.view")

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			toggleExplorer = function()
				if not api.tree.is_visible() then
					api.tree.open()
				elseif vim.bo.filetype ~= "NvimTree" then
					api.tree.focus()
				else
					api.tree.close()
				end
			end

			newFile = function()
				if api.tree.is_visible() and api.tree.is_tree_buf() then
					api.fs.create()
				end
			end

			-- del mappings
			vim.keymap.del("n", "<C-e>", { buffer = bufnr })
			vim.keymap.del("n", "q", { buffer = bufnr })
			vim.keymap.del("n", "<C-r>", { buffer = bufnr })
			vim.keymap.del("n", "e", { buffer = bufnr })
			vim.keymap.del("n", "a", { buffer = bufnr })

			-- custom mappings
			vim.keymap.set("n", "<C-e>", toggleExplorer, {})
			vim.keymap.set("n", "<C-r>", api.node.open.vertical, { buffer = bufnr })
			vim.keymap.set("n", "n", newFile, { buffer = bufnr })
			vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
		end
		require("nvim-tree").setup({
			on_attach = attach,
		})
	end,
}
