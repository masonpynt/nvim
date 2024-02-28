M = {}
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)
keymap("n", "<C-i>", "<C-i>", opts)

-- SudaWrite, not used yet to transfer from LVIM config file to here
-- vim.cmd [[noreabbrev <expr> w!! (getcmdtype() == ':' && getcmdline() == 'w!!') ? 'SudaWrite' : 'w!!']]

-- Normal --
-- -- Better window nav
keymap("n", "<m-h>", "<C-w-h>", opts)
keymap("n", "<m-j>", "<C-w-j>", opts)
keymap("n", "<m-k", "<C-w-k>", opts)
keymap("n", "<m-l>", "<C-w-l>", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

keymap("n", "<Down>", "<cmd>BookmarkNext<cr>", opts)
keymap("n", "<Up>", "<cmd>BookmarkPrev<cr>", opts)
keymap("n", "<Right>", "<cmd>FilemarkNext<cr>", opts)
keymap("n", "<Left>", "<cmd>FilemarkPrev<cr>", opts)

function _G.set_terminal_keymaps()
  vim.api.nvim_buf_set_keymap(0, "t", "<m-h>", [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<m-j>", [[<C-\><C-n><C-w-j]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<m-k>", [[<C-\><C-n><C-w-k]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<m-l>", [[<C-\><C-n><C-w-l]], opts)
end

vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"

--Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
