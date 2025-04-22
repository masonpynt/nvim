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

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua.with({ filetypes = { "lua" } }),
    null_ls.builtins.formatting.black.with({ filetypes = { "python" } }),
		null_ls.builtins.formatting.shfmt.with({ filetypes = { "sh", "zsh" } }),
    null_ls.builtins.formatting.jq.with({ filetypes = { "json" } }),
		null_ls.builtins.formatting.prettier.with({
			filetypes = { "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
      extra_args = { "--plugin-search-dir=/Users/mason/.nvm/versions/node/v18.20.3/lib/node_modules/prettier-plugin-astro" },
		}),
    null_ls.builtins.formatting.swiftformat.with({ filetypes = { "swift" } }),
	},
})

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
