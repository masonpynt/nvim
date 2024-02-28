M = {}
local status_ok, jaq_nvim = pcall(require, "jaq-nvim")
if not status_ok then
  return
end

jaq_nvim.setup {
  cmd = {
    default = "term",

    external = {
      typescript = "deno run %",
      javascript = "node %",
      python = "python3 %",
      rust = "cargo run",
      cpp = "g++ % -o $fileBase && ./$fileBase",
      go = "go run %",
      sh = "sh %",
    },

    internal = {

    },
  },
  behavior = {
    default = "terminal",
    startinsert = false,
    wincmd = false,
    autosave = false,
  },
  ui = {
    foat = {
      border = "none",

      height = 0.8,
      width = 0.8,
      x = 0.5,
      y = 0.5,

      border_hl = "FloatBorder",
      float_hl = "Normal",

      blend = 0,
    },

    terminal = {
      position = "vert",
      line_no = false,
      size = 60,
    },
  },
}

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<m-r>", ":silent only | Jaq<cr>", opts)
return M
