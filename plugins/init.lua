require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/playground")

	-- color scheme
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- file search and navigation
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		requires = "nvim-lua/plenary.nvim",
	})

	-- language stuff
	use("mhartington/formatter.nvim")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp") -- autocomplete
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	use("github/copilot.vim")

	-- debugging
	-- go
	use("mfussenegger/nvim-dap")
	use("leoluz/nvim-dap-go")

	-- testing
	use({
		"nvim-neotest/neotest",
		requires = {
			"nvim-lua/plenary.nvim",
			{ "nvim-neotest/neotest-go", branch = "feat/testify-suite" },
			"nvim-neotest/neotest-python",
			"nvim-neotest/neotest-plenary", -- this is for lua
		},
	})

	-- niceties
	use("lewis6991/gitsigns.nvim")
	use("nvim-tree/nvim-tree.lua")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup()
		end,
	})
	use({
		"smoka7/hop.nvim",
		tag = "*",
	})
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = true,
	})
end)

require("roveo.plugins.treesitter")
require("roveo.plugins.telescope")
require("roveo.plugins.cmp")

require("roveo.plugins.dap")
require("roveo.plugins.dap-go")
require("roveo.plugins.neotest")

require("roveo.plugins.gitsigns")
require("roveo.plugins.nvim-tree")
require("roveo.plugins.formatter")
require("roveo.plugins.hop")
require("roveo.plugins.toggleterm")
