local gh = function(x) return "https://github.com/" .. x end

vim.pack.add({
    gh("tanvirtin/vgit.nvim"),
    gh("mbbill/undotree"),

    -- Theme
    gh("SapphirusBeryl/nightfox.nvim"),

    -- LSP Config
    gh("neovim/nvim-lspconfig"),

    -- Mason Package Manager
    gh("williamboman/mason.nvim"),
    gh("williamboman/mason-lspconfig.nvim"),

    -- Telescope
    gh("nvim-telescope/telescope.nvim"),

    -- Treesitter
    gh("nvim-treesitter/nvim-treesitter"),
    gh("nvim-treesitter/nvim-treesitter-context"),

    -- Autocompletion
    { src = gh("L3MON4D3/LuaSnip") },
    { src = gh("Saghen/blink.cmp"), version = "v1.10.1" },
    { src = gh("ribru17/blink-cmp-spell") },

    -- Neo-tree
    { src = gh("nvim-neo-tree/neo-tree.nvim"), version = "v3.x" },

    -- Dependencies
    gh("nvim-lua/plenary.nvim"), -- neo-tree, telescope, and vgit
    gh("nvim-tree/nvim-web-devicons"), -- neo-tree
    gh("MunifTanjim/nui.nvim"), -- neo-tree
})
