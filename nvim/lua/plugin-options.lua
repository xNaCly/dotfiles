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

require("nvim-web-devicons").setup()

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

local lualine = require('lualine')

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = '',
    section_separators = '',
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = false,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {
        {'branch', icon = ''},
    },
    lualine_x = {
        {
            'diagnostics',
            sources = {'nvim_diagnostic', 'coc'},
            sections = {'error', 'warn', 'info', 'hint'},
            symbols = {error = 'E: ', warn = 'W: ', info = 'I: ', hint = 'H: '}
        },
        'filetype' 
    },
    lualine_y = {},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
