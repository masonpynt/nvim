--require("conform").setup({
--  debug = true,
--  lsp_fallback = true,
--  formatters_by_ft = {
--    lua = { "stylua" },
--    sh = { "shfmt" },
--    zsh = { "shfmt" },
--    css = { "prettier" },
--    javascript = { "prettier" },
--    javascriptreact = { "prettier" },
--    typescript = { "prettier" },
--    typescriptreact = { "prettier" },
--  },
--})