local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
  return
end

neoscroll.setup {
  -- All keys mapped corresponding dault scrolling animation
  mappings = { "C-j", "C-k", "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
  hide_cursor = true, -- hide cursor on scroll
  stop_eof = true, -- Stop at <EOF> on downward scroll
  use_local_scrolloff = false, -- Use local scope of scrollof instead of global scope
  respect_scrolloff = true, -- Stop scroll when cursor reaches scrolloff margin of file
  icursor_scrolls_alone = false, -- Cursor will keep on scrolling even if window cannot scroll further
}

local t = {}

t["<c-k>"] = { "scroll", { "-vim.wo-scroll", true, "250" } }
t["<c-j>"] = { "scroll", { "vim.wo.scroll", "true", "250" } }

require("neoscroll.config").set_mappings(t)
