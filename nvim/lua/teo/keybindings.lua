-- helper for mapping custom keybindings
-- source: https://gist.github.com/Jarmos-san/d46605cd3a795513526448f36e0db18e#file-example-keymap-lua
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { silent = true })
vim.keymap.set("n", "ga", vim.lsp.buf.code_action, { silent = true })
vim.keymap.set("n", "gr", vim.lsp.buf.references, { silent = true })
vim.keymap.set("n", "[g", vim.diagnostic.goto_prev, { silent = true })
vim.keymap.set("n", "]g", vim.diagnostic.goto_next, { silent = true })
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { silent = true })
vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float(nil, floating_options) end, { silent = true })
vim.keymap.set("n", "K", function() vim.lsp.buf.hover(floating_options) end, { silent = true })


-- toggle the nvim tree sidebar
map("n", "<C-b>", ":NvimTreeFindFileToggle<CR>", { silent = true })

-- move visual selection down
map("v", "J", ":m '>+1<CR>gv=gv")
-- move visual selection up
map("v", "K", ":m '<-2<CR>gv=gv")

local builtin = require('telescope.builtin')

vim.keymap.set("n", "<leader>f", builtin.find_files, { silent = true })
vim.keymap.set("n", "<leader>p", builtin.live_grep, { silent = true })
vim.keymap.set("n", "<leader>h", builtin.help_tags, { silent = true })
vim.keymap.set("n", "<leader>k", builtin.keymaps, { silent = true })
vim.keymap.set("n", "<leader>o", builtin.treesitter, { silent = true })
map("n", "<leader>t", ":TodoTelescope<CR>", { silent = true })
