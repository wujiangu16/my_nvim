require("nvim-tree").setup({
    -- 关闭文件时，自动关闭
    -- auto_close = true,
    -- 设置大小
    filters = {
        -- 不显示 .git 目录中的内容
        custom = {
            ".git/"
        },
        -- 显示 .gitignore
        -- exclude = {
        --     -- ".gitignore"
        -- },
        -- 不显示隐藏文件
        dotfiles = false
    },
    view = {
        relativenumber = true,
        number = true,
    },
    -- 以图标显示git 状态
    git = {
        enable = true
    },

})

vim.api.nvim_set_keymap("n", "<leader>ee", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- 展示help文档
