local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    download_result = fn.system({'ls', '-l', install_path})
    print("download_result: " .. download_result)
end

vim.cmd [[packadd packer.nvim]] 

return require('packer').startup(function(use) use 'wbthomason/packer.nvim'

    use {
      "folke/zen-mode.nvim",
      config = function()
        require("zen-mode").setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end
    }

    -- todo comments
    use {
        'folke/todo-comments.nvim',
        config = function() require("todo-comments").setup() end
    }

    -- git integration
    use 'lewis6991/gitsigns.nvim'

    -- toggle floating term
    use 'akinsho/toggleterm.nvim'

    -- display buffers and tabs nicely
    use 'akinsho/bufferline.nvim'

    -- color theme / sheme
    -- use {
    --     'folke/tokyonight.nvim',
    --     branch = 'main',
    --     config = function() vim.cmd([[colorscheme tokyonight-night]]) end
    -- }
    use { 
        "bluz71/vim-moonfly-colors",
        as = "moonfly",
        config = function() vim.cmd([[colorscheme moonfly]]) end
    }

    -- vscode extension provider
    use 'neoclide/coc.nvim'

    -- comment helper
    use 'tpope/vim-commentary'

    -- time tracking
    use 'wakatime/vim-wakatime'

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        config = function() require("telescope").setup() end,
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- status line
    use 'nvim-lualine/lualine.nvim'

    -- file explorer
    use {
        'nvim-tree/nvim-tree.lua',
        config = function() require("nvim-tree").setup({
            view = {
                adaptive_size = true,
            },
            renderer = {
              full_name = true,
              group_empty = true,
              special_files = {},
              symlink_destination = false,
              indent_markers = {
                enable = true,
              },
              icons = {
                show = {
                  file = true,
                  folder = true,
                  folder_arrow = true,
                  git = true,
                },
              },
            },
        }) end
    }

    -- icons for everything, file explorer, tabs, statusline
    use {
        'nvim-tree/nvim-web-devicons',
        config = function() require('nvim-web-devicons').setup() end
    }

    -- automatically add "([ pairs if first one is typed
    use 'jiangmiao/auto-pairs'

    -- color highlighting
    use {
        'norcalli/nvim-colorizer.lua',
        config = function() require("colorizer").setup() end
    }

    -- syntax highlighting and parser
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- sticky scroll
    use {
        'nvim-treesitter/nvim-treesitter-context',
        requires = {'nvim-treesitter/nvim-treesitter'}
    }
end)
