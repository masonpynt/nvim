local wk = require ("which-key")
wk.register(nvim.builtin.which_key.mappings)
nvim.builtin.which_key.mappings["dm"] = { "<cmd> lua require('neotest').run.run()<cr>", "Test Method"}
nvim.builtin.which_key.mappings["dM"] =
  { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Test Method DAP" }
nvim.builtin.which_key.mappings["df"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>",
  "Test Class",
}
nvim.builtin.which_key.mappings["dF"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>",
  "Test Class DAP",
}
nvim.builtin.which_key.mappings["dS"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" }