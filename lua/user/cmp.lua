
local kind_icons = {
	Text = " ",
	Method = " ",
	Function = " ",
	Constructor = " ",
	Field = " ",
	Variable = " ",
	Class = " ",
	Interface = " ",
	Module = " ",
	Property = " ",
	Unit = " ",
	Value = " ",
	Enum = " ",
	Keyword = " ",
	Snippet = " ",
	Color = " ",
	File = " ",
	Reference = " ",
	Folder = " ",
	EnumMember = " ",
	Constant = " ",
	Struct = " ",
	Event = " ",
	Operator = " ",
	TypeParameter = " ",
	Misc = " ",
	Array = "",
	Boolean = "蘒",
	Key = "",
	Namespace = "",
	Null = "ﳠ",
	Number = "",
	Object = "",
	Package = "",
	String = "",
}

local cmp = require'cmp'
-- TODO Figure out how to do filtering.
cmp.setup({
	window = {
		completion = cmp.config.window.bordered({
			border = "rounded",
			winhighlight = "Normal:Pmenu,CursorLine:PmenuSel,FloatBorder:FloatBorder,Search:None",
			col_offset = -3,
			side_padding = 1,
			scrollbar = false,
			scrolloff = 8,
		}),
    documentation = cmp.config.window.bordered({
      border = "rounded",
      winhighlight = "Normal:Pmenu,FloatBorder:FloatBorder,Search:None",
    }),
	},
  formatting = {
    format = function(entry, vim_item)
      -- Ensure the kind_icons table is correctly referenced here
      vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- Use the icons
      return vim_item
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    -- Add more sources as needed
  }),
})

vim.opt.pumblend = 10
