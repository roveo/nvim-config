local telescope = require("telescope")
telescope.setup()

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>f", builtin.find_files, {})
vim.keymap.set("n", "<leader>g", builtin.git_files, {})
vim.keymap.set("n", "<leader>s", builtin.live_grep)

vim.keymap.set("n", "<leader>b", builtin.buffers, {})

vim.keymap.set("n", "<leader>o", builtin.lsp_document_symbols, {})
vim.keymap.set("n", "<leader>p", builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set("n", "<leader>r", builtin.lsp_references, {})

vim.keymap.set("n", "<leader>a", "<cmd>Easypick zoxide<CR>")
