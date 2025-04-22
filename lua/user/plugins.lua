local plugins = {
  -- "Core" plugins
  "neovim/nvim-lspconfig",           -- Collection of configurations for built-in LSP client
  "tamago324/nlsp-settings.nvim",    -- LSP plugin for JSON/YAML.
  "williamboman/mason.nvim",         -- LSP, DAP, linter, formatter manager.
  "williamboman/mason-lspconfig",    -- Plugin for mason.nvim to more easily use lsp configs.
  "jose-elias-alvarez/null-ls.nvim", -- null ls be null ls
--  "stevearc/conform.nvim",
  {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme tokyonight-night")
  end
  },
  --"lunarvim/lunar.nvim" -- I might uncomment as the default lvim theme is pretty.
  "nvim-lua/plenary.nvim", "nvim-lua/popup.nvim",                         -- popup API (still a work in progress)
  "nvim-telescope/telescope.nvim",                    -- this is not optional (if ure normal).
  "nvim-telescope/telescope-fzf-native.nvim",    -- fuzzy finding for telescope, written in C (program in C!)
  "Tastyep/structlog.nvim",                      -- logging for nvim in lua.
  "hrsh7th/nvim-cmp",                           -- completion plugin
  "hrsh7th/cmp-nvim-lsp",                        -- cmp source nvim
  "hrsh7th/cmp-buffer",                          -- cmp source for buffer
  "hrsh7th/cmp-path",                            -- cmp source for path
  "hrsh7th/cmp-cmdline",
  "rafamadriz/friendly-snippets",                -- snippets for nvim for languages
  "saadparwaiz1/cmp_luasnip",                    -- cmp source for luasnip
  "folke/neodev.nvim",                           -- completion, docs, etc for nvim.lua API
  "windwp/nvim-autopairs",                       -- autopairs for nvim
  "nvim-treesitter/nvim-treesitter",             -- this one is obvious.
  "JoosepAlviste/nvim-ts-context-commentstring", -- treesitter context commentstring
-- "kyazdani42/nvim-tree.lua",                    -- file explorer tree
  "tamago324/lir.nvim",                          -- file explorer
  "lewis6991/gitsigns.nvim",              
  "folke/which-key.nvim",                        -- whichkey popup for keybinds
  "numToStr/Comment.nvim",                       -- comments that support treesitter, dot repeat, etc.
  "ahmedkhalf/project.nvim",                     -- that one cool project plugin that integrates with telescope.
  "nvim-tree/nvim-web-devicons",                 -- web dev icons for neovim
  "nvim-lualine/lualine.nvim",                   -- statusline conf plugin in lua
  "akinsho/nvim-bufferline.lua",                 -- bufferline plugin
  "SmiteshP/nvim-navic",                         -- context plugin at statusline
  "mfussenegger/nvim-dap",                       -- dap plugin
  "rcarriga/nvim-dap-ui",                        -- dap ui plugin (OOTB)
  "goolord/alpha-nvim",                          -- neovim greeter plugin
  "akinsho/toggleterm.nvim",                     -- multi-term window plugin
  "b0o/schemastore",                             -- JSON schema
  --"lunarvim/onedarker.nvim", -- this one is also pretty
  "lukas-reineke/indent-blankline.nvim",         -- indent line guides.

  -- "Optional or Additional Plugins"
  {
    "mawkler/modicator.nvim",
    event = "ColorScheme",
  },
  -- "HiPhish/nvim-ts-rainbow2", -- rainbow treesitter (i think this has issues so commented for the moment)
  "norcalli/nvim-colorizer.lua", -- colorizer for neovim to show hex vals
  "karb94/neoscroll.nvim", -- smooth scrolling *again
  "ghillb/cybu.nvim", -- custom notification and context windows for bnext and bprev
  "L3MON4D3/LuaSnip",
  "lunarvim/synthwave84.nvim",
  --  {
  --    "kndndrj/nvim-dbee",
  --    build = function ()
  --      require("dbee").install()
  --    end,
  --  },
  -- "kkharji/sqlite.lua",
  --  { url = "git@github.com:ChristianChiarulli/bookmark.nvim.git" },
    { url = "git@github.com:ChristianChiarulli/onedark.nvim.git" },
    { url = "git@github.com:LunarVim/primer.nvim.git" },
  "stevearc/dressing.nvim",                      -- Improvements on default behaviour (extensible core UI hooks).
  "AckslD/swenv.nvim",                           -- cool plugin for hot-switching python envs (WHICH I WILL NEVER DO).
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "nvim-tree/nvim-tree.lua",
  "nvim-treesitter/nvim-treesitter-textobjects", -- syntax aware selection, etc
  "mfussenegger/nvim-jdtls",                     -- lsp extensions
--  "opalmay/vim-smoothie",                        -- smooth scrolling
  {
    "j-hui/fidget.nvim",                         -- UI for notifications/LSP progress.
    branch = "legacy",
  },
  "windwp/nvim-ts-autotag", -- auto close tags using treesitter
  "kylechui/nvim-surround", -- change/edit/add plugin for surrounding pairs (among other stuff).
  -- "christianchiarulli/harpoon" -- i want this so badly to work.
--  "NvChad/nvim-colorizer.lua",
  "moll/vim-bbye",            -- delete buffers without closing windows and/or fucking up layouts such as split cols
  "folke/todo-comments.nvim", -- required because half my code is #TODO.
  --  "windwp/nvim-spectre", -- spectre find and replace (probably not use).
--  "f-person/git-blame.nvim",  -- git blame plugin for neovim
  --  "ruifm/gitlinker.nvim", -- generate permalinks for git web frontends.
  "mattn/vim-gist",           -- gist creation (i will use this once and then never again)
  "mattn/webapi-vim",
  "folke/zen-mode.nvim",      -- shhh. I'm medidating.
  {
    "lvimuser/lsp-inlayhints.nvim",
    branch = "anticonceal",
  },
  -- "lunarvim/darkplus.nvim" -- lunarvim themes are pretty.
  "kevinhwang91/nvim-bqf", -- quickfix windows for nvim that aren't sucky.
  "is0n/jaq-nvim",         -- quickrun code ("just another quickrun")
  "nacro90/numb.nvim",     -- peek line numbers :)
  "neogitorg/neogit",      -- git interface for neovim
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim", -- i swear I will use go one day, and when that day comes...
  "leoluz/nvim-dap-go",
  "jose-elias-alvarez/typescript.nvim",
  "petertriho/nvim-scrollbar",
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },
  "MunifTanjim/nui.nvim", -- UI.
  {
    "jinh0/eyeliner.nvim", -- move fast with f/F
    config = function()
      require("eyeliner").setup {
        highlight_on_key = true,
      }
    end,
  },
  { "christianchiarulli/telescope-tabs", branch = "chris" }, -- telescope tabs that work
--  "monaqa/dial.nvim", -- increment/decrement plugin
  {
    "0x100101/lab.nvim", -- lab! Roadrunner Coderunner!
    build = "cd js && npm ci",
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },

  "mfussenegger/nvim-dap-python",
  "nvim-neotest/neotest", -- interactive testing within neovim
  "nvim-neotest/neotest-python", -- same as above
  {
    "hrsh7th/cmp-emoji",
    event = "BufRead",
  },
  "swiftlang/sourcekit-lsp",
-- "ThePrimeagen/vim-be-good", -- gamer
  "lambdalisue/suda.vim", -- sudawrite w!!
  "renerocksai/telekasten.nvim",
  "jvgrootveld/telescope-zoxide",
}

return plugins
