vim.g.smoothie_hide_cursor = 1

vim.cmd[[
noremap <C-j> <cmd>call smoothie#do("\<C-D>") <CR>
vnoremap <C-j> <cmd>call smoothie#do("\<C-D>") <CR>

nnoremap <C-k> <cmd>call smoothie#do("\<C-U>") <CR>
vnoremap <C-k> <cmd>call smoothie#do("\<C-U>") <CR>
]]

vim.g.smoothie_remapped_commands = {
  "<C-D>",
  "<C-U>",
  "<C-F>",
  "<S-Down>",
  "<PageDown>",
  "<C-B>",
  "<S-Up>",
  "<PageUp>",
  "z+",
  "z^",
  "z<CR>",
  "z.",
  "zz",
  "z-",
  "zb",
  "{",
  "}",
  "<ScrollWheelDown>",
  "<ScrollWheelUp>",
}

vim.g.smoothie_update_interval=20
vim.g.smoothie_speed_constant_factor=15
vim.g.smoothie_speed_linear_factor=15
