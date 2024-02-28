-- Initialise a global table for nvim.builtin to ensure the rest of the plugins can access it
_G.nvim = {
  builtin = {
    which_key = {
      setup = {
        plugins = {
          presets = { operators = false },
        },
        ignore_missing = true,
      },
      mappings = {},
    }
  }
}

--require "user.launch"
require "user.plugins"
require "user.lazy"
require "user.autocommands"
require "user.fidget"
require "user.keymaps"
require "user.neogit"
require "user.todo-comments"
require "user.bqf"
require "user.functions"
require "user.lab"
require "user.neoscroll"
require "user.scrollbar"
require "user.treesitter"
require "user.cmp"
require "user.git"
require "user.neotest"
require "user.smoothie"
require "user.webdev-icons"
require "user.icons"
require "user.colorizer"
require "user.lualine"
require "user.numb"
--require "user.spectre"
require "user.whichkey"
require "user.copilot"
require "user.inlay-hints"
require "user.matchup"
require "user.nvimtree"
require "user.surround"
require "user.zen-mode"
require "user.cybu"
require "user.jaq"
require "user.modicator"
require "user.options"
require "user.telescope"
require "user.zk"
require "user.mason"
require "user.autopairs"
