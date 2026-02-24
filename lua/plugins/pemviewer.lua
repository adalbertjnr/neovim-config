return {
	"adalbertjnr/pemviewer.nvim",
	name = "pemviewer",
	lazy = true,
	keys = {
		{ "<leader>pi", "<cmd>PKIInspect<CR>", desc = "Inspect PEM file" },
	},
	opts = {
		window = {
			width_ratio = 0.3,
			height_ratio = 0.8,
			border = "rounded",
			win_options = {
				relativenumber = true,
				number = false,
			},
		},

		handlers = {
			["CERTIFICATE"] = { cmd = "openssl x509 -text -noout", label = "Certificate" },
			["CERTIFICATE REQUEST"] = { cmd = "openssl req -text -noout", label = "Certificate Signing Request" },
			["RSA PRIVATE KEY"] = { cmd = "openssl rsa -text -noout", label = "RSA Private Key" },
			["EC PRIVATE KEY"] = { cmd = "openssl ec -text -noout", label = "EC Private Key" },
			["PRIVATE KEY"] = { cmd = "openssl pkey -text -noout", label = "PKCS8 Private Key" },
			["ENCRYPTED PRIVATE KEY"] = { cmd = "openssl pkey -text -noout", label = "Encrypted Private Key" },
			["TRUSTED CERTIFICATE"] = { cmd = "openssl x509 -text -noout", label = "Trusted Certificate" },
		},

		show_summary = true,
	},
	config = function(_, opts)
		require("pemviewer").setup(opts)
	end,
}
