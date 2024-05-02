vim.diagnostic.config({ virtual_text = true })
vim.lsp.set_log_level("trace")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").clangd.setup({
  cmd = { "clangd", "--log=verbose" },
  on_attach = function(client, bufnr)
  end,
  capabilities = capabilities,
})

require("lspconfig").tsserver.setup({
	on_attach = function(client, bufnr) end,
	capabilities = capabilities,
})

require("lspconfig").tsserver.setup({
	on_attach = function(client, bufnr) end,
	capabilities = capabilities,
})

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua.with({ filetypes = { "lua" } }),
		null_ls.builtins.formatting.shfmt.with({ filetypes = { "sh", "zsh" } }),
		null_ls.builtins.formatting.prettier.with({
			filetypes = { "css", "javascript", "javascriptreact", "typescript", "typescriptreact" },
		}),
	},
})

require("typescript").setup({
	debug = false,
	go_to_source_definition = { fallback = true },
	server = {
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
	},
})
