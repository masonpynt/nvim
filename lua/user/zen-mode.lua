local status_ok, zen_mode = pcall(require, "zen-mode")
if not status_ok then
  return
end

zen_mode.setup {
  window = {
    backdrop = 1,
    height = 0.9,
    width = 80,
    options = {
      signcolumn = "no",
      number = false,
      relativenumber = false,
      cursorline = true,
      cursorcolumn = false,
    },
  },
  plugins = {
    gitsigns = { enabled = false },
    tmux = { enabled = false },
    twilight = { enabled = false },
  },
  on_open = function()
    -- TODO figure out if there's a way to disable cmp and breadcrumbs in neovim
    require("lsp-inlayhints").toggle()
  end,
}
