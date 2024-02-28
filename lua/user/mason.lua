require("mason").setup({
    ui = {
        border = "rounded",
    },
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "lua_ls",
        "cssls",
        "html",
        "tsserver",
        "astro",
        "pyright",
        "bashls",
        "jsonls",
        "yamlls",
        "marksman",
        "tailwindcss",
        "rust_analyzer",
        "eslint",
    },
})
