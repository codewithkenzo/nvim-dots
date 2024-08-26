-- config/alpha.lua
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠛⢽⠊⠊⠑⠂⠷⢾⡝⡫⣿⣿⣿⣿⣿⣿⣿",
"⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣹⢿⣟⢿⣿⣄⠀⠁⠀⠀⠀⠛⢭⡞⣾⣿⣿⣿⣿⣿⣿⣿",
"⣧⠀⡈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣻⡾⡟⠑⠅⡀⠀⠀⠀⠉⠑⠀⢄⠀⠈⡀⠈⣇⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣷⡘⠤⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⠱⡗⠁⠀⠀⠀⠓⠁⠀⡀⠀⠀⡞⣰⣁⣗⡳⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣌⣒⡙⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⡷⠃⠀⡔⡆⣴⠀⠀⠀⠑⡀⠀⠀⠸⣿⣜⢽⣇⢞⠿⣻⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⠆⣴⣛⡯⢏⡽⣿⣿⣿⣿⣿⡿⡑⣵⢁⠇⠡⡹⡛⣵⠀⠄⠰⠀⠀⠈⢩⠟⠽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⡔⡴⣫⡍⠶⠿⡊⣿⣿⣿⣿⣷⠳⡋⣽⣲⣮⣞⢴⣧⣆⠀⡐⢉⢧⠂⠈⠑⢻⢝⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⣟⢖⢭⠶⠗⠛⠣⠊⠉⠻⣿⢟⣼⣇⢷⡝⡑⢛⡥⡻⡸⢈⢡⠻⠞⣀⡄⢆⠛⠟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⣿⣷⣎⣣⠄⠂⠀⢴⢷⠀⠀⠈⠙⠛⠙⠋⠙⠋⣚⣳⠖⢀⣿⣸⢯⣢⡩⠈⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⣿⣿⡟⣉⠀⢮⣳⡈⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣷⣷⠟⠁⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⡿⢿⣿⣿",
"⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠈⠑⡄⠄⠀⠀⠰⠀⠐⠄⠀⠀⠀⠀⣠⠴⠂⠀⢀⠔⠀⠀⠀⠀⠀⠀⠀⠹⣿⢛⣹⣾⣿⣿",
"⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠘⢄⠂⠀⠀⠔⠀⠀⠀⠀⠀⠠⢁⠄⠀⠄⠀⠀⢀⢀⠄⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿",
"⣿⣿⣿⣿⣿⣿⣿⡇⡀⠀⠀⠀⠀⠊⢳⡥⠀⠐⠂⠀⠀⠀⠀⠀⠀⡄⠈⠄⠀⠀⣛⡠⠆⠂⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿",
"⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠱⡑⡂⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⡀⠄⢀⡠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠻⢿⣿",
"⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠆⠀⠀⠀⠙⢄⡤⡀⠀⠀⠀⠀⠀⠀⠀⡠⠔⢚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁",
"⣿⣿⣿⣿⣿⣿⣿⡏⠁⠀⠁⠀⠀⠀⠀⠀⠀⠈⢃⡢⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀",
"⣿⣿⣿⣿⣿⣿⣿⣿⠀⠠⠀⠀⠀⠀⢀⡀⠀⠀⢀⠣⡕⣂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠐⠀⠀",
"⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⢰⣇⠀⠀⠀⡄⡝⣔⠥⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⣀⠠⢤⣘⠻⣶⢖⡦⠄⠒⠛",
"⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠰⣿⡇⠀⠀⠀⡈⡀⠈⠂⠀⠈⣿⣶⣦⣴⡶⣶⣶⣿⣼⣠⠀⠈⠙⢾⣽⣺⢦⠀⠀",
"⣿⣿⣿⣿⣿⣿⣿⣿⣿⡼⡀⠀⢨⣵⣿⡅⠈⠀⠀⠀⠈⠰⢓⡤⡿⣿⣯⣿⡯⣻⣯⣭⣟⣻⠿⣷⡄⠀⠀⠈⠂⡙⡌⠀",
}
-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find file", ":cd $HOME/ | Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button("s", "  > Config", ":e ~/.config/nvim/init.lua<CR>"),
    dashboard.button( "b", "  > Restore last session", ":SessionLoadLast<CR>"),
    dashboard.button( "B", "  > Search sessions", ":Telescope persisted<CR>"),
    dashboard.button( "L", "💤 > Lazy", ":Lazy<CR>"),
    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>")
}

-- Set footer (if you have the fortune feature enabled)
-- local fortune = require("alpha.fortune")
-- dashboard.section.footer.val = fortune()

-- Apply configuration
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

