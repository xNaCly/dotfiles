vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
})

_G.floating_options = {
    focusable = true,
    focus = false,
    max_height = 50,
    max_width = 100,
}

vim.lsp.config.sqleibniz = {
    cmd = { '/usr/bin/sqleibniz', '--lsp' },
    filetypes = { "sql" },
    root_markers = { "leibniz.lua" }
}
vim.lsp.enable('sqleibniz')

vim.api.nvim_create_autocmd({"BufWritePre", nil}, {
    callback = function () 
        if vim.lsp.buf_is_attached() then
            vim.lsp.buf.format()
        end
    end,
})

local lspconfig = require "lspconfig"
local lsps = { "rust_analyzer", "gopls", "ts_ls", "html", "cssls" }
for _, lsp in pairs(lsps) do
    lspconfig[lsp].setup{}
end
