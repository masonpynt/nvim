local icons = require "user.icons"

local diff = {
  "diff",
  colored = false,
  symbols = { added = icons.git.LineAdded, modified = icons.git.LineModified, removed = icons.git.LineRemoved },
}

local diagnostics = {
  "diagnostics",
  sections = { "error", "warn" },
  colored = false,
  always_visible = true,
}

local filetype = {
  function()
    local filetype = vim.bo.filetype
    local upper_case_filetypes = {
      "json",
      "jsonc",
      "yaml",
      "toml",
      "css",
      "scss",
      "html",
      "xml",
    }

    if vim.tbl_contains(upper_case_filetypes, filetype) then
      return filetype:upper()
    end

    return filetype
  end,
}

-- Merge the new components into your existing lualine setup
require("lualine").setup {
  options = {
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    ignore_focus = { "NvimTree" },
  },
  sections = {
    lualine_a = {},
    lualine_b = { "branch" },
    lualine_c = { diagnostics },
    lualine_x = { "copilot", filetype },
    lualine_y = { "progress" },
    lualine_z = {},
  },
  extensions = { "quickfix", "man", "fugitive" },
}

