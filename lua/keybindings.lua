-- 设置mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- 翻页
vim.api.nvim_set_keymap("n", "<C-f>", "10jzz", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-b>", "10kzz", { noremap = true, silent = true })


-- jk映射esc
vim.api.nvim_set_keymap("i", "jk", "<esc>", { noremap = true, silent = true })

-- 保存
vim.api.nvim_set_keymap("n", "<leader>ww", ":w<CR>", { noremap = true, silent = true })

-- command-s to save
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

-- 退出
vim.api.nvim_set_keymap("n", "<leader>qq", ":wq<CR>", { noremap = true, silent = true })

-- 退出保存
-- vim.api.nvim_set_keymap("n", "<leader>q", ":wq<CR>", { noremap = true, silent = true })

-- 退出并保存所有
vim.api.nvim_set_keymap("n", "<leader>Q", ":wqall<CR>", { noremap = true, silent = true})



-- panel navigation
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- split panel
vim.api.nvim_set_keymap("n", "<leader>hs", ":split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>vs", ":vsplit<CR>", { noremap = true, silent = true })


-- -- panel resize with yuio
-- vim.api.nvim_set_keymap("n", "<C-i>", ":resize -2<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-u>", ":resize +2<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-y>", ":vertical resize -2<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<C-o>", ":vertical resize +2<CR>", { noremap = true, silent = true })


vim.api.nvim_set_keymap("n", "<leader>kk", ":resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>jj", ":resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>hh", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ll", ":vertical resize +2<CR>", { noremap = true, silent = true })

-- cancel highlight
vim.api.nvim_set_keymap("n", "<leader>nh", ":noh<CR>", { noremap = true, silent = true })