local formatters = require("format-on-save.formatters")

require("format-on-save").setup({
    go = {
        formatters.lsp,
        formatters.shell({ cmd = "gofumpt" }),
    },
    python = {
        formatters.lsp,
        formatters.shell({ cmd = "black -"}),
    },
})
