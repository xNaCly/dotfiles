local lualine = require('lualine')

require('lualine').setup {
  options = {
    icons_enabled = true,
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
