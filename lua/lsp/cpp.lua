-- local lsp_set_keymap = require("keybindings") 
-- local on_attach = function(_, bufnr)
--     lsp_set_keymap.set_keymap(bufnr)
-- end


require("lspconfig").clangd.setup {
    setting = {
        cpp = {
            clangdFileStatus = true,
            completion = {
                detailedLabel = true
            },
            diagnostics = {
                disabled = { "clang-diagnostic-unused-parameter" }
            },
            format = {
                style = "file"
            },
            headerInsertion = "never",
            headerInsertionDecorators = false,
            headerInsertionPoint = "after"
        },
    },
}

vim.cmd[[ LspStart clangd ]]
