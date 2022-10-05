require('basic')
require('keybindings')
require("autocmd")
require("plugins")
-- 主题
require('plugin-config/vscode')
-- 插件
require('plugin-config/bufferline')
require('plugin-config/nvimtree')
require('plugin-config/lualine')
require('plugin-config/dashboard-nvim')
require('plugin-config/which')
require('plugin-config/toggleterm')
require('plugin-config/nvim-treesitter')
require('plugin-config/telescope')
-- require('plugin-config/nvim-lsp-installer')
require('plugin-config/cmp')
require('plugin-config/comment')
require('plugin-config/autopairs')
require('plugin-config/todo')
require('plugin-config/gitsigns')
require('lsp')


vim.g.python_host_prog = "/opt/anaconda3/envs/pytorch/bin/python"
