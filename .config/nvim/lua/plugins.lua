-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use('wbthomason/packer.nvim')
 
    use('olimorris/onedarkpro.nvim')
    use('SapphirusBeryl/nightfox.nvim')
    use('nvim-tree/nvim-web-devicons')

    use('mbbill/undotree')
   
    use {
        'neovim/nvim-lspconfig', 
        requires = {
            -- Mason Package Manager
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lsp-signature-help'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use { 
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.x',
        requires = {
            {'nvim-lua/plenary.nvim'} 
        }
    }

    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        requires = { 
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
            'MunifTanjim/nui.nvim',
            -- '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    } 

    use {
        'tanvirtin/vgit.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
end)
