require('telescope').load_extension "file_browser"

require('telescope').setup {
    defaults = {
        -- Default configuration for telescope goes here:
        -- config_key = value,
        layout_strategy = 'horizontal',
        layout_config = { height = 0.95, width = 0.9, preview_width = 0.7},
        mappings = {
            i = {
                -- map actions.which_key to <C-h> (default: <C-/>)
                -- actions.which_key shows the mappings for your picker,
                -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                ["<C-h>"] = "which_key",
            },
            n = {
                ["<C-h>"] = "which_key",
                ["<C-f>"] = require('telescope.actions').preview_scrolling_down,
                ["<C-b>"] = require('telescope.actions').preview_scrolling_up,
                ["q"] = require('telescope.actions').close,
            }
        }
    },
}


vim.api.nvim_set_keymap("n", "<leader>ff", "<Cmd>Telescope find_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fg", "<Cmd>Telescope live_grep<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fm", "<Cmd>Telescope marks<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>fj", "<Cmd>Telescope jumplist<CR>", {noremap = true, silent = true})
-- open recent files
vim.api.nvim_set_keymap("n", "<leader>fr", "<Cmd>Telescope oldfiles<CR>", {noremap = true, silent = true})
-- open file browser
vim.api.nvim_set_keymap("n", "<leader>fb", "<Cmd>Telescope current_buffer_fuzzy_find<CR>",
{ noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>fl", "<Cmd>Telescope file_browser<CR>", { noremap = true, silent = true })
