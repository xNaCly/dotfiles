return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
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
    use {
        'folke/tokyonight.nvim',
        branch = 'main',
        config = function() vim.cmd([[colorscheme tokyonight-night]]) end
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

    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

    -- status line
    use 'nvim-lualine/lualine.nvim'

    -- file explorer
    use {
        'nvim-tree/nvim-tree.lua',
        config = function() require("nvim-tree").setup({
            view = {
                adaptive_size = true,
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
