-- helper for mapping custom keybindings
-- source: https://gist.github.com/Jarmos-san/d46605cd3a795513526448f36e0db18e#file-example-keymap-lua
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- move accepting copilot suggestion to strg+enter
-- map("i", "<C-Enter>", "copilot#Accept('<CR>')", { silent = true, expr = true })

-- taken from the coc.nvim example config:
-- https://github.com/neoclide/coc.nvim
-- function _G.show_docs()
--     local cw = vim.fn.expand('<cword>')
--     if vim.fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
--         vim.api.nvim_command('h ' .. cw)
--     elseif vim.api.nvim_eval('coc#rpc#ready()') then
--         if not vim.fn.CocActionAsync('doHover') then
--             if vim.lsp.buf_is_attached() then
--                 vim.lsp.buf.hover()
--             end
--         end
--     end
-- end

-- autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

map("n", "gd", "<Plug>(coc-definition)", { silent = true })
map("n", "ga", "<Plug>(coc-codeaction-cursor)", { silent = true })
map("n", "gr", "<Plug>(coc-references)", { silent = true })
-- map("n", "K", "<CMD>lua _G.show_docs()<CR>", { silent = true })
map("n", "[g", "<Plug>(coc-diagnostic-prev)", { silent = true })
map("n", "]g", "<Plug>(coc-diagnostic-next)", { silent = true })
map("n", "<leader>r", "<Plug>(coc-rename)", { silent = true })

-- toggle the nvim tree sidebar
map("n", "<C-b>", ":NvimTreeFindFileToggle<CR>", { silent = true })

-- move visual selection down
map("v", "J", ":m '>+1<CR>gv=gv")
-- move visual selection up
map("v", "K", ":m '<-2<CR>gv=gv")

-- use Tab to trigger completion for the currently selected completion
local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
map("i", "<TAB>", 'coc#pum#visible() ? coc#pum#confirm() : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)

local builtin = require('telescope.builtin')

vim.keymap.set("n", "<leader>f", builtin.find_files, { silent = true })
vim.keymap.set("n", "<leader>p", builtin.live_grep, { silent = true })
vim.keymap.set("n", "<leader>h", builtin.help_tags, { silent = true })
vim.keymap.set("n", "<leader>k", builtin.keymaps, { silent = true })
vim.keymap.set("n", "<leader>o", builtin.treesitter, { silent = true })
map("n", "<leader>t", ":TodoTelescope<CR>", { silent = true })
