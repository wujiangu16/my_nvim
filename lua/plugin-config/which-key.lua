local wk = require("which-key")
wk.register({
    c = {
        name = "myvimrc", -- 指定该快捷键组的名称
        f = {":edit $MYVIMRC<CR>", "Open vimrc"}, -- 创建新的快捷键绑定
        s = {":source $MYVIMRC<CR>", "reload vimrc", noremap = true},
        -- 也可以只显示一个标签而不绑定到具体的快捷键
        e = {"New File"}
    }
}, {prefix = "<leader>"})
