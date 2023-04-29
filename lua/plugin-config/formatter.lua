-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
    -- ignore warning
    logging = true,

    filetype = {
        -- python
        python = {
            -- Configuration for psf/black
            require("formatter.filetypes.python").autopep8,
            -- function()
            --     return {
            --         exe = "python3 -m autopep8", -- this should be available on your $PATH
            --         args = {
            --             "--in-place --aggressive --aggressive",
            --             vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)),
            --         },
            --         stdin = false,
            --     }
            -- end,
        },
        cpp = {
            require("formatter.filetypes.cpp").clangformat,
        },
        json = {
            require("formatter.filetypes.json").prettier,
        },
        lua = {
            require("formatter.filetypes.lua").luaformat,
        },
        ["*"] = {
            -- "formatter.filetypes.any" defines default configurations for any
            -- filetype
            require("formatter.filetypes.any").remove_trailing_whitespace
        }
    }
}

-- set keymap
vim.api.nvim_set_keymap("n", "<leader>FF", ":Format<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<leader>FW", ":FormatWrite<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>FW", ":normal! gg=G<CR>", { noremap = true, silent = true })


-- -- set autocommand
-- vim.cmd [[
-- augroup FormatAutogroup
--   autocmd!
-- --   autocmd BufWritePost * FormatWrite
--   autocmd BufWritePost * normal! gg=G
-- --   autocmd BufWritePost * echom "代码已格式化"
-- augroup END
-- ]]


-- -- -- set autocommand
-- vim.cmd [[
-- augroup FormatAutogroup
--   autocmd!
--   autocmd BufWritePost * normal! gg=G
--   autocmd BufWritePost * echom "代码已格式化"
-- augroup END
-- ]]


