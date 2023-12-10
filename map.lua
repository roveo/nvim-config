-- quit buffer
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")

-- quit all
vim.keymap.set("n", "<leader>Q", "<cmd>qa<CR>")

-- source current config
vim.keymap.set("n", "<leader>S", "<cmd>source ~/.config/nvim/init.lua<CR>")

-- ^ to switch to previous buffer
vim.keymap.set("n", "^", "<cmd>b#<CR>")

-- <space>w to cycle through windows
vim.keymap.set("n", "<leader>w", "<C-w>w")

-- <space>s to split vertically
--vim.keymap.set("n", "<leader>s", "<cmd>vsp<CR>")

-- toggle floating terminal
vim.keymap.set("n", "<C-i>", "<cmd>FloatermToggle<CR>")
