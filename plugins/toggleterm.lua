local tt = require("toggleterm")

tt.setup({
	size = function(term)
		if term.direction == "horizontal" then
			return vim.o.lines * 0.4
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	shade_terminals = false,
	open_mapping = [[<c-\>]],
	direction = "float",
})

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, close_on_exit = true })

function _lazygit_toggle()
	lazygit:toggle()
end

vim.keymap.set("n", "<C-g>", _lazygit_toggle)
vim.keymap.set("t", "<C-g>", _lazygit_toggle)
