
vim.keymap.set("n", "<F5>", "<cmd>!/opt/anaconda3/envs/torch/bin/python %<CR>", { silent = true, noremap = true })

vim.keymap.set({ "i", "n", "v" }, "<F6>", "<cmd>lua require'dap'.continue()<CR>",
    { silent = true, noremap = true})
vim.keymap.set({ "i", "n", "v" }, "<F7>", "<cmd>lua require'dap'.step_over()<CR>",
    { silent = true, noremap = true})
vim.keymap.set({ "i", "n", "v" }, "<F8>", "<cmd>lua require'dap'.step_into()<CR>",
    { silent = true, noremap = true })
vim.keymap.set({ "i", "n", "v" }, "<F9>", "<cmd>lua require'dap'.step_over()<CR>",
    { silent = true, noremap = true})
vim.keymap.set({ "i", "n", "v" }, "<F10>", "<cmd>lua require'dap'.toggle_breakpoint()<CR>",
    { silent = true, noremap = true })



require("lspconfig").pyright.setup {

    -- set cmd to conda env
    cmd = { "pyright-langserver", "--stdio" },
    -- set root dir to current file
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true
            }
        }
    }
 
}

-- -- 执行 :LspStart pyright 启动服务端
vim.cmd [[ LspStart pyright]]



