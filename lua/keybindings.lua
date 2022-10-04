-- 设置mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 配置tabline快捷键，主要以 t开头代表 t
-- 关闭当前标签页
-- vim.api.nvim_set_keymap("n", "tc", ":tabclose<cr>", {noremap = true, silent = true})
-- -- 关闭所有标签页，仅保留当前标签页
-- vim.api.nvim_set_keymap("n", "to", ":tabonly<cr>", {noremap = true, silent = true})
-- -- gt 切换到下一个，gT切换到上一个

-- 翻页
vim.api.nvim_set_keymap("n", "<C-f>", "10jzz", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-b>", "10kzz", {noremap = true, silent = true})

-- 多窗口的打开与关闭
vim.api.nvim_set_keymap("n", "sv", ":vsp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sh", ":sp<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "sc", ":close<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "so", ":only<CR>", {noremap = true, silent = true})
-- 多窗口跳转
vim.api.nvim_set_keymap("n", "<leader>h", "<C-w>h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>l", "<C-w>l", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>j", "<C-w>j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>k", "<C-w>k", {noremap = true, silent = true})

-- 其他有用的绑定
-- 使用 <C-u> 将光标所在单词转化为全大写
vim.api.nvim_set_keymap("i", "<C-u>", "<esc>viwUwa", {noremap = true, silent = true})
-- 使用 <C-l> 将光标所在单词转化为全小写
vim.api.nvim_set_keymap("i", "<C-l>", "<esc>viwuwa", {noremap = true, silent = true})
-- dw删除当前光标所在单词
vim.api.nvim_set_keymap("n", "dw", "diw", {noremap = true, silent = true})
-- 快速打开vimrc文件
-- vim.api.nvim_set_keymap("n", "<leader>ee", ":vs $MYVIMRC<CR>", {noremap = true, silent = true})-- 快速启用 vimrc
-- 保存文件
vim.api.nvim_set_keymap("n", "<leader>ss", ":w<CR>", {noremap = true, silent = true})
-- 取消高亮
vim.api.nvim_set_keymap("n", "<leader>hh", ":nohlsearch<CR>", {noremap = true, silent = true})
-- 退出
vim.api.nvim_set_keymap("n", "<leader>qq", ":qall<CR>", {noremap = true, silent = true})
-- 保存并退出
vim.api.nvim_set_keymap("n", "<leader>wq", ":wqall<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>ww", ":wall<CR>", {noremap = true, silent = true})

-- jk映射esc
vim.api.nvim_set_keymap("i", "jk", "<esc>", {noremap = true, silent = true})

-- ctrl-s 映射保存
vim.api.nvim_set_keymap("", "<C-s>", ":w<cr>", {noremap = true, silent = true})

-- 空格映射:
-- vim.api.nvim_set_keymap("n", " ", ":", {noremap = true, silent = true})


-- 终端模式
vim.api.nvim_set_keymap("t", "<ESC>", "<C-\\><C-n>", {noremap = true, silent = true})




