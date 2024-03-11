local icons = require "user.icons"
local cmp = require('cmp')
local luasnip = require('luasnip')

require('luasnip/loaders/from_vscode').lazy_load()
require('luasnip').filetype_extend('typescriptreact', { 'html' })

local check_backspace = function()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s')
end

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered({
      border = 'rounded',
      winhighlight = 'Normal:Pmenu,CursorLine:PmenuSel,FloatBorder:FloatBorder,Search:None',
      col_offset = -3,
      side_padding = 1,
      scrollbar = false,
      scrolloff = 8,
    }),
    documentation = cmp.config.window.bordered({
      border = 'rounded',
      winhighlight = 'Normal:Pmenu,FloatBorder:FloatBorder,Search:None',
    }),
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expandable() then
        luasnip.expand()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif check_backspace() then
        fallback()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format('%s %s', icons.kind[vim_item.kind], vim_item.kind) 
      return vim_item
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, 
    { name = 'buffer' },
    { name = 'path' },
  }),
})
--themeing
vim.cmd [[
  highlight link CmpItemKindFunction Function
  highlight link CmpItemKindVariable Identifier
  highlight link CmpItemKindKeyword Keyword
  highlight link CmpItemAbbrMatch Search
  highlight link CmpItemAbbrMatchFuzzy Search
]]
vim.opt.pumblend = 10
