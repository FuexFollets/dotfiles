-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use('wbthomason/packer.nvim')

    use('RRethy/vim-hexokinase')

    -- Color schemes
    use('folke/tokyonight.nvim')
    use('sickill/vim-monokai')
    use('Mofiqul/dracula.nvim')

    use('airblade/vim-gitgutter') -- Git diff within vim
    use { -- Git diff viewer side-by-side
        'sindrets/diffview.nvim',
        requires = 'nvim-lua/plenary.nvim'
    }

    use('mbbill/undotree') -- undotre

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    use { -- Telescope
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('theprimeagen/harpoon') -- Primeagen Harpoon

    use { -- LSP
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
end)
