local M = {}

M.setup = function()
  local null_ls = require("null-ls")
  local sources = {}

  -- Helper function to safely add formatters
  local function try_add(formatter_name, config)
    if null_ls.builtins.formatting[formatter_name] then
      table.insert(sources, null_ls.builtins.formatting[formatter_name].with(config))
    else
      vim.notify("Formatter '" .. formatter_name .. "' not available in none-ls", vim.log.levels.WARN)
    end
  end

  -- Try to add each formatter safely
  try_add("stylua", { filetypes = { "lua" } })
  try_add("black", { filetypes = { "python" } })
  try_add("shfmt", { filetypes = { "sh", "zsh" } })

  -- Add prettier for web and data formats
  try_add("prettier", {
    filetypes = { 
      "css", "javascript", "javascriptreact", "typescript", "typescriptreact", 
      "json", "html", "markdown", "yaml", "markdown.mdx" 
    },
    extra_args = { "--plugin-search-dir=/Users/mason/.nvm/versions/node/v18.20.3/lib/node_modules/prettier-plugin-astro" },
  })

  -- Add formatters for common languages
  -- Create custom rustup formatter for Rust using the generator helper
  local h = require("null-ls.helpers")
  local methods = require("null-ls.methods")
  
  local rustup_fmt = h.make_builtin({
    name = "rustup_fmt",
    meta = {
      url = "https://rust-lang.github.io/rustfmt/",
      description = "Rust formatter using rustup",
    },
    method = methods.internal.FORMATTING,
    filetypes = { "rust" },
    generator_opts = {
      command = "rustup",
      args = { "run", "stable", "rustfmt", "--emit=stdout", "--edition=2021" },
      to_stdin = true,
    },
    factory = h.formatter_factory,
  })
  
  table.insert(sources, rustup_fmt)
  try_add("gofumpt", { filetypes = { "go" } })
  try_add("clang_format", { filetypes = { "c", "cpp", "objc", "objcpp" } })
  try_add("rubocop", { filetypes = { "ruby" } })
  try_add("google_java_format", { filetypes = { "java" } })
  try_add("phpcsfixer", { filetypes = { "php" } })
  try_add("xmllint", { filetypes = { "xml" } })

  -- Try to add swiftformat
  try_add("swiftformat", { filetypes = { "swift" } })

  -- Initialize null-ls with available sources
  null_ls.setup({ sources = sources })
end

return M
