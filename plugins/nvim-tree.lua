require("nvim-tree").setup({
	view = {
		width = 30,
	},
	reload_on_bufenter = true,
	update_focused_file = {
		enable = true,
	},
})

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

require("nvim-tree").setup({
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true,
	},
})
