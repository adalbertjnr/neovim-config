---@brief
---
--- https://github.com/mrjosh/helm-ls
---
--- Helm Language server. (This LSP is in early development)
---
--- `helm Language server` can be installed by following the instructions [here](https://github.com/mrjosh/helm-ls).
---
--- The default `cmd` assumes that the `helm_ls` binary can be found in `$PATH`.
---
--- If need Helm file highlight use [vim-helm](https://github.com/towolf/vim-helm) plugin.

---@type vim.lsp.Config
return {
	cmd = { "helm_ls", "serve" },
	filetypes = { "helm", "gotmpl", "helmfile", "yaml.helm", "yaml.helm-values" },
	root_markers = { "Chart.yaml", "Chart.yml" },
	settings = {
		["helm-ls"] = {
			logLevel = "info",
			valuesFiles = {
				mainValuesFile = "values.yaml",
				lintOverlayValuesFile = "values.lint.yaml",
				additionalValuesFilesGlobPattern = "values*.yaml",
			},
			helmLint = {
				enabled = true,
				ignoredMessages = {},
			},
			yamlls = {
				enabled = true,
				enabledForFilesGlob = "*.{yaml,yml}",
				diagnosticsLimit = 50,
				showDiagnosticsDirectly = false,
				path = "yaml-language-server", -- or something like { "node", "yaml-language-server.js" }
				initTimeoutSeconds = 3,
				config = {
					schemas = {},
					completion = true,
					hover = true,
					-- any other config from https://github.com/redhat-developer/yaml-language-server#language-server-settings
				},
			},
		},
	},
	capabilities = {
		workspace = {
			didChangeWatchedFiles = {
				dynamicRegistration = true,
			},
		},
	},
}
