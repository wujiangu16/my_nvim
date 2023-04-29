-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use "MunifTanjim/nui.nvim"
    use({
        "Bryley/neoai.nvim",
        require = { "MunifTanjim/nui.nvim" },
    })
    use 'folke/tokyonight.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons'
    }

    -- use {
    --     'nvim-tree/nvim-tree.lua',
    --     requires = {
    --         'nvim-tree/nvim-web-devicons', -- optional
    --     },
    --     config = function()
    --         require("nvim-tree").setup {}
    --     end
    -- }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- use {
    --     'glepnir/dashboard-nvim',
    --     event = 'VimEnter',
    --     config = function()
    --         require('dashboard').setup {
    --             theme = 'Doom',

    --         }
    --     end,
    --     requires = { 'nvim-tree/nvim-web-devicons' }
    -- }

    use "folke/which-key.nvim"

    use { "akinsho/toggleterm.nvim", tag = '*' }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' }, {
            'nvim-treesitter/nvim-treesitter',
            run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
        } }
    }

    use { "nvim-telescope/telescope-file-browser.nvim" }

    -- use { 'rmagatti/auto-session' }

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- nvim-cmp
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/nvim-cmp' }
    -- vsnip
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }
    -- use { 'rafamadriz/friendly-snippets' }
    -- lspkind
    use { 'onsails/lspkind-nvim' }

    use({
        "glepnir/lspsaga.nvim",
        -- opt = true,
        -- branch = "main",
        -- event = "LspAttach",
        -- -- config = function()
        -- --     require("lspsaga").setup({})
        -- -- end,
        requires = {
            { "nvim-tree/nvim-web-devicons" },
            --Please make sure you install markdown and markdown_inline parser
            { "nvim-treesitter/nvim-treesitter" }
        }
    })

    -- use { 'simrat39/symbols-outline.nvim' }
    use { 'stevearc/aerial.nvim',}
    use { 'mfussenegger/nvim-dap' }

    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }

    use { 'theHamsta/nvim-dap-virtual-text' }

    use { 'lewis6991/gitsigns.nvim' }

    use {'Shatur/neovim-session-manager'}

    use {
        "goolord/alpha-nvim"
    }

    -- use {
    --     "cshuaimin/ssr.nvim",
    --     module = "ssr",
    --     -- Calling setup is optional.
    --     config = function()
    --         require("ssr").setup {
    --             border = "rounded",
    --             min_width = 50,
    --             min_height = 5,
    --             max_width = 120,
    --             max_height = 25,
    --             keymaps = {
    --                 close = "q",
    --                 next_match = "n",
    --                 prev_match = "N",
    --                 replace_confirm = "<cr>",
    --                 replace_all = "<leader><cr>",
    --             },
    --         }
    --     end
    -- }

    -- use { 'nvim-orgmode/orgmode', config = function()
    --     require('orgmode').setup {}
    -- end
    -- }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use { 'mhartington/formatter.nvim' }
    use 'm4xshen/autoclose.nvim'
    use { "ellisonleao/glow.nvim", config = function() require("glow").setup() end }
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

    use {
      "folke/todo-comments.nvim",
      requires = "nvim-lua/plenary.nvim",
    }

    -- Packer
    -- use({
    --     "folke/noice.nvim",
    --     requires = {
    --         -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    --         "MunifTanjim/nui.nvim",
    --         -- OPTIONAL:
    --         --   `nvim-notify` is only needed, if you want to use the notification view.
    --         --   If not available, we use `mini` as the fallback
    --         "rcarriga/nvim-notify",
    --     }
    -- })

    use 'simrat39/symbols-outline.nvim'
end)
