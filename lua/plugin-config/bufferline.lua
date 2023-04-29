vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        mode = "buffers",
        numbers = "ordinal",
        offsets = {
            {
                filetype = "neo-tree",
                text = "File Explorer",
                highlight = "Directory",
                text_align = "left"
            }
        },
    }
    -- show offset for neo tree

}

-- 快速在buffer间跳转
vim.api.nvim_set_keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>bg", ":BufferLinePick<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "gt", ":BufferLineCycleNext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gT", ":BufferLineCyclePrev<CR>", {noremap = true, silent = true})

-- 关闭 buffer
vim.api.nvim_set_keymap("n", "<leader>br", ":BufferLineCloseRight<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>bl", ":BufferLineCloseLeft<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bp", ":BufferLinePickClose<CR>", {noremap = true, silent = true})

-- 移动 buffer
vim.api.nvim_set_keymap("n", "<leader>bn", ":BufferLineMoveNext<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>bN", ":BufferLineMovePrev<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>bc", ":bd<CR>", { noremap = true, silent = true })

-- 关闭指定编号buffer


