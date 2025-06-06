local status_ok, hints = pcall(require, "lsp-inlayhints")
if not status_ok then
  return
end

-- Using LspAttach event for Neovim >= 0.8
vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
vim.api.nvim_create_autocmd("LspAttach", {
  group = "LspAttach_inlayhints",
  callback = function(args)
    if not (args.data and args.data.client_id) then
      return
    end

    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    require("lsp-inlayhints").on_attach(client, bufnr)
  end,
})

hints.setup {
  inlay_hints = {
    parameter_hints = {
      show = false,
      separator = ", ",
    },
    type_hints = {
      show = true,
      prefix = "",
      separator = ", ",
      remove_colon_end = false,
      remove_colon_start = false,
    },
    labels_separator = " ",
    max_len_align = false,
    max_len_align_padding = 1,
    right_align = false,
    right_align_padding = 7,
    highlight = "Comment",
  },
  -- Disable debug mode to hide potential errors
  debug_mode = false,
}
