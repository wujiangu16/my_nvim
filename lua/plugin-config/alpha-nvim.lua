local alpha = require 'alpha'
local dashboard = require 'alpha.themes.dashboard'
dashboard.section.header.val = {
    [[ .----------------. .----------------. .----------------. .-----------------..----------------. .----------------. ]],
    [[| .--------------. | .--------------. | .--------------. | .--------------. | .--------------. | .--------------. |]],
    [[| |     _____    | | |     _____    | | |      __      | | | ____  _____  | | |    ______    | | | _____  _____ | |]],
    [[| |    |_   _|   | | |    |_   _|   | | |     /  \     | | ||_   \|_   _| | | |  .' ___  |   | | ||_   _||_   _|| |]],
    [[| |      | |     | | |      | |     | | |    / /\ \    | | |  |   \ | |   | | | / .'   \_|   | | |  | |    | |  | |]],
    [[| |   _  | |     | | |      | |     | | |   / ____ \   | | |  | |\ \| |   | | | | |    ____  | | |  | '    ' |  | |]],
    [[| |  | |_' |     | | |     _| |_    | | | _/ /    \ \_ | | | _| |_\   |_  | | | \ `.___]  _| | | |   \ `--' /   | |]],
    [[| |  `.___.'     | | |    |_____|   | | ||____|  |____|| | ||_____|\____| | | |  `._____.'   | | |    `.__.'    | |]],
    [[| |              | | |              | | |              | | |              | | |              | | |              | |]],
    [[| '--------------' | '--------------' | '--------------' | '--------------' | '--------------' | '--------------' |]],
    [['----------------' '----------------' '----------------' '----------------' '----------------' '----------------'  ]]
}
dashboard.section.buttons.val = {
    dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
    dashboard.button("Leader l s", "  Load session"),
    dashboard.button("Leader e f", "  Open tree explorer"),
    dashboard.button("Leader f l", "  File Browser"),
    dashboard.button("Leader f r", "  Recently Used Files", ":Telescope oldfiles<CR>"),
    dashboard.button("Leader f f", "  Find File "),
    dashboard.button("Leader f g", "  Find Word "),
    dashboard.button("Leader c f", "  Open Personal dotfiles "),
    -- open recent files
}
-- local handle = io.popen(' fortune')
-- local fortune = handle:read("*a")
-- handle:close()
-- dashboard.section.footer.val = fortune

dashboard.config.opts.noautocmd = true

vim.cmd [[autocmd User AlphaReady echo 'ready']]

alpha.setup(dashboard.config)
