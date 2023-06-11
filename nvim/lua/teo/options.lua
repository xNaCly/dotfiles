-- bind variables
local g = vim.g

local o = vim.opt

g.moonflyVirtualTextColor = true

-- disable autocomplete for copilot on tab
g.copilot_no_tab_map = true

-- set the leader key to space
g.mapleader = " "

-- always enable sign column
o.signcolumn = "yes"

-- disable default file tree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.netrw_banner = 0
g.netrw_winsize = 0

-- enable numbers
o.number = true

-- dont save buffers on closing them
o.hidden = true

-- enable syntax highlighting
o.syntax = "on"

-- disable wrapping chars which are out of the current view
o.wrap = false

-- set encodings
o.encoding = "utf-8"
o.fileencoding = "utf-8"

-- more space for commands at the bottom
o.cmdheight = 2

-- enable better splitting
o.splitbelow = true
o.splitright = true

o.conceallevel = 0

-- indentation, 4 spaces for a tab
o.tabstop = 4
o.shiftwidth = 4

-- automatically insert tabs
o.smarttab = true

-- replace tab with spaces
o.expandtab = true

-- indent blocks automatically
o.smartindent = true
o.autoindent = true

-- enable tabline if a tab is there
o.showtabline = 1

-- dont show mode in the bottom bar
o.showmode = false

-- set updatetime to 50ms (updates every 50ms)
o.updatetime = 50
o.timeoutlen = 500

-- enable better colors
o.termguicolors = true

-- better searching
o.incsearch = true
o.smartcase = true
o.hlsearch = false

-- disable backups
o.backup = false
o.background = "dark"

-- display the current line different from the rest of the file
o.cursorline = true

o.swapfile = false

o.colorcolumn = "140"
