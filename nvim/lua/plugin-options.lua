-- set colorsheme
vim.cmd([[colorscheme tokyonight-night]])

vim.cmd([[command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument]])
vim.cmd([[command! -nargs=0 Format :CocCommand editor.action.formatDocument]])

require("nvim-tree").setup({
  view = {
      adaptive_size = true,
  },
})


require("telescope").setup()

require("todo-comments").setup()

-- bufferline config
require("bufferline").setup{
    options = {
        -- only display tabs, hide buffers
        mode = "tabs",
        -- style for kitty terminal
        separator_style = "slant",
        -- display coc diagnostics
        diagnostics = "coc"
    }
}

-- treesitter config
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "help"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- nvim tree setup
require("nvim-tree").setup()

-- nvim colorizer setup
require("colorizer").setup()

-- nvim gitsigns setup
require("gitsigns").setup{
    current_line_blame = true,
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol',
        delay = 50,
    },
}

-- toggleterm tree setup
require("toggleterm").setup{
    open_mapping = [[<c-J>]],
    direction = 'horizontal',
    size = 25,
}

-- colors for my custom line
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#1e1d2f',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.blue },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.violet } },
  visual = { a = { fg = colors.black, bg = colors.cyan } },
  replace = { a = { fg = colors.black, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

require("lualine").setup {
    options = {
        theme = "nightfly"
    }
}

-- lualine
-- require('lualine').setup {
--   options = {
--     theme = bubbles_theme,
--     component_separators = '|',
--     section_separators = { left = '', right = '' },
--   },
--   sections = {
--     lualine_a = {
--       { 'mode', separator = { left = '' }, right_padding = 2 },
--     },
--     lualine_b = { 'filename', 'branch' },
--     lualine_c = { 'fileformat' },
--     lualine_x = {},
--     lualine_y = { 'filetype', 'progress' },
--     lualine_z = {
--       { 'location', separator = { right = '' }, left_padding = 2 },
--     },
--   },
--   inactive_sections = {
--     lualine_a = { 'filename' },
--     lualine_b = {},
--     lualine_c = {},
--     lualine_x = {},
--     lualine_y = {},
--     lualine_z = { 'location' },
--   },
--   tabline = {},
--   extensions = {},
-- }
