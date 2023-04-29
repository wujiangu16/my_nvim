local opt = require("toggleterm").setup({
    open_mapping = [[<c-\>]],
    -- 打开新终端后自动进入插入模式
    start_in_insert = true,
    -- 在当前buffer的下方打开新终端
    direction = 'float'
})


vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<leader>l", "<Cmd> wincmd l<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("t", "<leader>h", "<Cmd> wincmd h<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("t", "<leader>j", "<Cmd> wincmd j<CR>", {noremap = true, silent = true}) 
vim.api.nvim_set_keymap("t", "<leader>k", "<Cmd> wincmd k<CR>", {noremap = true, silent = true})


local Terminal = require('toggleterm.terminal').Terminal

local htopterm = Terminal:new({
    cmd = 'htop',
    direction = 'float'
})

function htop_toggle()
	htopterm:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>ht", "<Cmd>lua htop_toggle()<CR>", {noremap = true, silent = true})


local pyterm = Terminal:new({
    cmd = 'conda activate pytorch\npython',
    direction = 'float'
})

function python_toggle()
  pyterm:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>py", "<Cmd>lua python_toggle()<CR>", {noremap = true, silent = true})


-- local lazygitterm = Terminal:new({
--     cmd = 'lazygit',
--     direction = 'float'
-- })

-- function lazygit_toggle()
-- 	lazygitterm:toggle()
-- end

-- vim.api.nvim_set_keymap("n", "<leader>lg", "<Cmd>lua lazygit_toggle()<CR>", {noremap = true, silent = true})