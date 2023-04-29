vim.keymap.set({ "n", "x" }, "<leader>sf", function() require("ssr").open() end)

-- vim.api.nvim_set_keymap("n", "<leader>sr", ":lua require('ssr').open() <cr>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("x", "<leader>sr", ":lua require('ssr').open() <cr>", { noremap = true, silent = true })
