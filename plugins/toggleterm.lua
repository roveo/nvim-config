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
