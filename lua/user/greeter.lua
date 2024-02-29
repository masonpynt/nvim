local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require("alpha.themes.dashboard")
local icons = require("user.icons")


dashboard.section.header.val = {
'    _   __         _    ___         ',
'   / | / /__  ____| |  / (_)___ ___ ',
'  /  |/ / _ \\/ __ \\ | / / / __ `__ \\',
' / /|  /  __/ /_/ / |/ / / / / / / /',
'/_/ |_|\\___/\\____/|___/_/_/ /_/ /_/'
}

dashboard.section.buttons.val = {
	dashboard.button("f", icons.ui.FindFile .. " Find File", ":Telescope find_files<CR>"),
	dashboard.button("n", icons.ui.NewFile .. " New File", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", icons.ui.Project .. " Open Project", ":Telescope projects<CR>"),
	dashboard.button("r", icons.ui.History .. " Recent Files", ":Telescope oldfiles<CR>"),
	dashboard.button("t", icons.ui.FindText .. " Find Text", ":Telescope live_grep<CR>"),
	dashboard.button("c", icons.ui.Gear .. " Configuration", ":e ~/.config/nvim/init.lua<CR>"),
	dashboard.button("q", icons.ui.Close .. " Quit", ":qa<CR>"),
}

dashboard.section.footer.val = {
	"eat glass!",
}

alpha.setup(dashboard.opts)

vim.cmd([[
  autocmd FileType alpha setlocal nofoldenable
]])
