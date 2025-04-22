local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
  return
end

neoscroll.setup({
  hide_cursor = true,
  stop_eof = true,
  use_local_scrolloff = false,
  respect_scrolloff = true,
  cursor_scrolls_alone = false,
})

local map = vim.keymap.set
local opts = { silent = true, expr = false }

map("n", "<C-k>", function()
  require("neoscroll").scroll(-vim.wo.scroll, true, 250)
end, opts)

map("n", "<C-j>", function()
  require("neoscroll").scroll(vim.wo.scroll, true, 250)
end, opts)

