vim.diagnostic.config({ virtual_text = true })
vim.lsp.set_log_level("trace")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").clangd.setup({
  cmd = { "clangd", "--log=verbose" },
  on_attach = function(client, bufnr)
  end,
  capabilities = capabilities,
})

require("lspconfig").astro.setup({
  on_attach = function(client, bufnr)
    print("Astro LSP attached") -- Debug message
  end,
  capabilities = capabilities,
})

require("lspconfig").sourcekit.setup({
  cmd = { "sourcekit-lsp", "--log-level", "debug" },
  on_attach = function(client, bufnr)
  end,
  capabilities = capabilities,
})

require("lspconfig").ts_ls.setup({
	on_attach = function(client, bufnr) end,
	capabilities = capabilities,
})

require("lspconfig").ts_ls.setup({
	on_attach = function(client, bufnr) end,
	capabilities = capabilities,
})

-- Load none-ls configuration from separate module
require("user.none-ls").setup()

require("lspconfig").ts_ls.setup({
  on_attach = function(client, bufnr)
    -- Customize on_attach function as needed
  end,
  capabilities = capabilities,
  settings = {
    typescript = {
      inlayHints = {
        includeInlayEnumMemberValueHints = false,
        includeInlayFunctionLikeReturnTypeHints = false,
        includeInlayFunctionParameterTypeHints = false,
        includeInlayParameterNameHints = "none",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayPropertyDeclarationTypeHints = false,
        includeInlayVariableTypeHints = false,
      },
    },
  },
})
require'lspconfig'.gopls.setup {
  capabilities = capabilities,
}

require'lspconfig'.html.setup {
  capabilities = capabilities,
}

require'lspconfig'.sourcekit.setup {
  capabilities = capabilities,
}

require'lspconfig'.pyright.setup {
  capabilities = capabilities,
}
