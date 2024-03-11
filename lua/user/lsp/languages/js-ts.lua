local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({

})

require("typescript").setup({
  debug = false,
  go_to_source_definition = { fallback = true },
  server = {
    settings = {
      typescript = {
        inlayHints = {}
      }
    }
  }
})
