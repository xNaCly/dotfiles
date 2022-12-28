-- helper for mapping custom keybindings
-- source: https://gist.github.com/Jarmos-san/d46605cd3a795513526448f36e0db18e#file-example-keymap-lua
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- taken from the coc.nvim example config:
-- https://github.com/neoclide/coc.nvim
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end

-- autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end


-- view the definition of the currently hovering over element
map("n", "gd", "<Plug>(coc-definition)", {silent = true})
-- view a list of the references of the currently hovering over element
map("n", "gr", "<Plug>(coc-references)", {silent = true})
-- view documentation for the currently hovering over element
map("n", "K", "<CMD>lua _G.show_docs()<CR>", {silent = true})

-- toggle the nvim tree sidebar
map("n", "<C-b>", ":NvimTreeToggle<CR>", {silent = true})

-- on space f open fzf for files
map("n", "<Leader>f", ":FZF<CR>", {silent = true})
-- on space p open ripgrep for strings in files
map("n", "<Leader>p", ":Rg<CR>", {silent = true})

-- move visual selection down
map("v", "J", ":m '>+1<CR>gv=gv")
-- move visual selection up
map("v", "K", ":m '<-2<CR>gv=gv")

-- use Tab to trigger completion for the currently selected completion
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
map("i", "<TAB>", 'coc#pum#visible() ? coc#pum#confirm() : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)

