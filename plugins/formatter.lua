local go = require("formatter.filetypes.go")
local py = require("formatter.filetypes.python")

require("formatter").setup({
	filetype = {
		lua = { require("formatter.filetypes.lua").stylua },
		go = {
			go.goimports,
			function()
				return { exe = "gofumpt", stdin = true }
			end,
		},
		python = {
			py.black,
			function()
				return {
					exe = "isort",
					args = { "--profile=black" },
				}
			end,
		},
	},
})

-- format on save (from README.md)
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})
