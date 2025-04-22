-- require which-key
local wk = require("which-key")

-- Setup options
-- Equivalent to your old nvim.builtin.which_key.setup
wk.setup({
	plugins = {
		presets = { operators = false },
	},
	-- Your custom filter function remains the same
	filter = function(mapping)
		return mapping.desc and mapping.desc:match("%S")
	end,
	-- Add other global options here if needed from the which-key documentation
})

wk.add({
	-- Mappings with <leader> prefix
	{ "<leader>b", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
	{ "<leader>v", "<cmd>vsplit<cr>", desc = "vsplit" },
	{ "<leader>h", "<cmd>nohlsearch<cr>", desc = "nohl" },
	{ "<leader>o", "<cmd>AerialToggle!<cr>", desc = "Outline" },
	{ "<leader>q", '<cmd>lua require("user.functions").smart_quit()<CR>', desc = "Quit" },

	-- { "<leader>/", '<cmd>lua require("Comment.api").toggle.linewise.current()<CR>', desc = "Comment" },
	-- { "<leader>c", "<cmd>Bdelete!<CR>", desc = "Close Buffer" },

	{ "<leader>r", group = "Replace" },
	{ "<leader>rr", "<cmd>lua require('spectre').open()<cr>", desc = "Replace" },
	{ "<leader>rw", "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", desc = "Replace Word" },
	{ "<leader>rf", "<cmd>lua require('spectre').open_file_search()<cr>", desc = "Replace Buffer" },

	{ "<leader>a", group = "A.I." },
	{ "<leader>ac", "<cmd>ChatGPT<cr>", desc = "ChatGPT" },
	{ "<leader>aa", "<cmd>ChatGPTActAs<cr>", desc = "Act As GPT" },
	{ "<leader>ae", "<cmd>ChatGPTEditWithInstructions<cr>", desc = "Edit GPT" },
	{ "<leader>ar", "<cmd>ChatRunCustomCodeAction<cr>", desc = "Code Action GPT" },
	{ "<leader>as", "<cmd>Copilot suggestion<cr>", desc = "Toggle Copilot Suggestion" },
	{ "<leader>ap", "<cmd>Copilot panel<cr>", desc = "Toggle Copilot Panel" },
	{ "<leader>at", "<cmd>Copilot toggle<cr>", desc = "Toggle Copilot" },

	{ "<leader>d", group = "Debug" },
	{ "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", desc = "Breakpoint" },
	{ "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", desc = "Continue" },
	{ "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", desc = "Into" },
	{ "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", desc = "Over" },
	{ "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", desc = "Out" },
	{ "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", desc = "Repl" },
	{ "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", desc = "Last" },
	{ "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", desc = "UI" },
	{ "<leader>dx", "<cmd>lua require'dap'.terminate()<cr>", desc = "Exit" },

	{ "<leader>f", group = "Find" },
	{ "<leader>fb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
	{ "<leader>fc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
	{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
	{ "<leader>ft", "<cmd>Telescope live_grep<cr>", desc = "Find Text" },
	{ "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "Find String" },
	{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help" },
	{ "<leader>fH", "<cmd>Telescope highlights<cr>", desc = "Highlights" },
	{ "<leader>fi", "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>", desc = "Media" },
	{ "<leader>fl", "<cmd>Telescope resume<cr>", desc = "Last Search" },
	{ "<leader>fM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
	{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent File" },
	{ "<leader>fR", "<cmd>Telescope registers<cr>", desc = "Registers" },
	{ "<leader>fk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
	{ "<leader>fC", "<cmd>Telescope commands<cr>", desc = "Commands" },

	{ "<leader>g", group = "Git" },
	{ "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
	{ "<leader>gj", "<cmd>lua require('gitsigns').next_hunk()<cr>", desc = "Next Hunk" },
	{ "<leader>gk", "<cmd>lua require('gitsigns').prev_hunk()<cr>", desc = "Prev Hunk" },
	{ "<leader>gl", "<cmd>GitBlameToggle<cr>", desc = "Blame" }, -- If you're using 'git-blame.nvim' or similar
	{ "<leader>gp", "<cmd>lua require('gitsigns').preview_hunk()<cr>", desc = "Preview Hunk" },
	{ "<leader>gr", "<cmd>lua require('gitsigns').reset_hunk()<cr>", desc = "Reset Hunk" },
	{ "<leader>gR", "<cmd>lua require('gitsigns').reset_buffer()<cr>", desc = "Reset Buffer" },
	{ "<leader>gs", "<cmd>lua require('gitsigns').stage_hunk()<cr>", desc = "Stage Hunk" },
	{ "<leader>gu", "<cmd>lua require('gitsigns').undo_stage_hunk()<cr>", desc = "Undo Stage Hunk" },
	{ "<leader>gd", "<cmd>lua require('gitsigns').diffthis()<cr>", desc = "Diff This" },
	{ "<leader>gD", "<cmd>lua require('gitsigns').diffthis('~')<cr>", desc = "Diff with Last Commit" },
	{ "<leader>gn", ":!git checkout -b ", desc = "Checkout New Branch" }, -- Manual command, still works
	{ "<leader>go", "<cmd>Telescope git_status<cr>", desc = "Changed Files" },
	{ "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Branches" },
	{ "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Commits" },
	{ "<leader>gf", "<cmd>Telescope git_bcommits<cr>", desc = "Buffer Commits" },
	-- G = { name = "Gist", ... },
	-- { "<leader>gG", group = "Gist" },
	-- Commented Nested sub-mappings for Gist group:
	-- a = { "<cmd>Gist -b -a<cr>", "Create Anon" },
	-- { "<leader>gGa", "<cmd>Gist -b -a<cr>", desc = "Create Anon" },
	-- d = { "<cmd>Gist -d<cr>", "Delete" },
	-- { "<leader>gGd", "<cmd>Gist -d<cr>", desc = "Delete" },
	-- f = { "<cmd>Gist -f<cr>", "Fork" },
	-- { "<leader>gGf", "<cmd>Gist -f<cr>", desc = "Fork" },
	-- g = { "<cmd>Gist -b<cr>", "Create" },
	-- { "<leader>gGg", "<cmd>Gist -b<cr>", desc = "Create" },
	-- l = { "<cmd>Gist -l<cr>", "List" },
	-- { "<leader>gGl", "<cmd>Gist -l<cr>", desc = "List" },
	-- p = { "<cmd>Gist -b -p<cr>", "Create Private" },
	-- { "<leader>gGp", "<cmd>Gist -b -p<cr>", desc = "Create Private" },

	{ "<leader>l", group = "LSP" },
	{ "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
	{
		"<leader>lc",
		"<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<cr>",
		desc = "Toggle Copilot Suggestion Auto Trigger",
	},
	-- { "<leader>lc", "<cmd>lua require('user.lsp').server_capabilities()<cr>", desc = "Get Capabilities" }, -- This conflicts with the Copilot one above, leaving both commented

	{ "<leader>ld", "<cmd>TroubleToggle<cr>", desc = "Diagnostics" },
	{ "<leader>lw", "<cmd>Telescope lsp_workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
	{ "<leader>lf", "<cmd>lua vim.lsp.buf.format({ async = true })<cr>", desc = "Format" },
	{ "<leader>lg", "<cmd> lua vim.lsp.buf.definition()<cr>", desc = "Go to Definition" },
	{ "<leader>lF", "<cmd>LspToggleAutoFormat<cr>", desc = "Toggle Autoformat" },
	{ "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
	{ "<leader>lh", "<cmd>lua require('lsp-inlayhints').toggle()<cr>", desc = "Toggle Hints" },
	{ "<leader>lH", "<cmd>IlluminationToggle<cr>", desc = "Toggle Doc HL" },
	{ "<leader>lI", "<cmd>LspInstallInfo<cr>", desc = "Installer Info" },
	{ "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<CR>", desc = "Next Diagnostic" },
	{ "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", desc = "Prev Diagnostic" },
	{ "<leader>lv", "<cmd>lua require('lsp_lines').toggle()<cr>", desc = "Virtual Text" },
	{ "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
	{ "<leader>lo", "<cmd>SymbolsOutline<cr>", desc = "Outline" },
	{ "<leader>lq", "<cmd>lua vim.lsp.diagnostic.setqflist()<cr>", desc = "Quickfix" },
	{ "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename" },
	{ "<leader>lR", "<cmd>TroubleToggle lsp_references<cr>", desc = "References" },
	{ "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
	{ "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols" },
	{ "<leader>lt", '<cmd>lua require("user.functions").toggle_diagnostics()<cr>', desc = "Toggle Diagnostics" },
	{ "<leader>lu", "<cmd>LuaSnipUnlinkCurrent<cr>", desc = "Unlink Snippet" },

	{ "<leader>t", group = "Tab" },
	{
		"<leader>tt",
		"<cmd>lua require('telescope').extensions['telescope-tabs'].list_tabs(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal', prompt_title='Tabs'})<cr>",
		desc = "Find Tab",
	},
	{ "<leader>tn", "<cmd>tabnew %<cr>", desc = "New Tab" },
	{ "<leader>tc", "<cmd>tabclose<cr>", desc = "Close Tab" },
	{ "<leader>to", "<cmd>tabonly<cr>", desc = "Only Tab" },

	-- { "<leader>o", group = "Options" }, -- Note: This conflicts with the active <leader>o AerialToggle above. Keeping commented.
	-- c = { "<cmd>lua nvim.builtin.cmp.active = false<cr>", "Completion off" },
	-- { "<leader>oc", "<cmd>lua nvim.builtin.cmp.active = false<cr>", desc = "Completion off" },
	-- C = { "<cmd>lua nvim.builtin.cmp.active = true<cr>", "Completion on" },
	-- { "<leader>oC", "<cmd>lua nvim.builtin.cmp.active = true<cr>", desc = "Completion on" },
	-- -- w = { '<cmd>lua require("user.functions").toggle_option("wrap")<cr>', "Wrap" },
	-- -- { "<leader>ow", '<cmd>lua require("user.functions").toggle_option("wrap")<cr>', desc = "Wrap" },
	-- -- r = { '<cmd>lua require("user.functions").toggle_option("relativenumber")<cr>', "Relative" },
	-- -- { "<leader>or", '<cmd>lua require("user.functions").toggle_option("relativenumber")<cr>', desc = "Relative" },
	-- -- l = { '<cmd>lua require("user.functions").toggle_option("cursorline")<cr>', "Cursorline" },
	-- -- { "<leader>ol", '<cmd>lua require("user.functions").toggle_option("cursorline")<cr>", desc = "Cursorline" },
	-- -- s = { '<cmd>lua require("user.functions").toggle_option("spell")<cr>', "Spell" },
	-- -- { "<leader>os", '<cmd>lua require("user.functions").toggle_option("spell")<cr>", desc = "Spell" },
	-- -- t = { '<cmd>lua require("user.functions").toggle_tabline()<cr>', "Tabline" },
	-- -- { "<leader>ot", '<cmd>lua require("user.functions").toggle_tabline()<cr>', desc = "Tabline" },

	{ "<leader>n", group = "Notes" },
	{ "<leader>nc", "<cmd>Telekasten show_calendar<cr>", desc = "Calendar" },
	{ "<leader>nn", "<cmd>Telekasten new_note<cr>", desc = "Note" },
	{ "<leader>nf", "<cmd>Telekasten find_notes<cr>", desc = "Find" },
	{ "<leader>nF", "<cmd>Telekasten find_daily_notes<cr>", desc = "Find Journal" },
	{ "<leader>nj", "<cmd>Telekasten goto_today<cr>", desc = "Journal" },
	{ "<leader>np", "<cmd>Telekasten panel<cr>", desc = "Panel" },
	{ "<leader>nt", "<cmd>Telekasten toggle_todo<cr>", desc = "Toggle Todo" },

	{ "<leader>e", group = "NvimTree" },
	{ "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "Explorer" },
	{ "<leader>ef", "<cmd>NvimTreeFocus<CR>", desc = "Focus" },

	-- Mappings with 'm' prefix (from your separate wk.add block)
	-- Add mode = "n" explicitly as per your old m_opts
	{ "mm", "<cmd>BookmarkToggle<cr>", desc = "Toggle", mode = "n" },
	{ "mj", "<cmd>BookmarkNext<cr>", desc = "Next", mode = "n" },
	{ "mk", "<cmd>BookmarkPrev<cr>", desc = "Prev", mode = "n" },
	{ "mc", "<cmd>BookmarkClear<cr>", desc = "Clear", mode = "n" },
	{ "ml", "<cmd>BookmarkList<cr>", desc = "List", mode = "n" },
	{ "mf", "<cmd>FilemarkToggle<cr>", desc = "Mark File", mode = "n" },
	{ "mh", '<cmd>lua require("harpoon.mark").add_file()<cr>', desc = "Harpoon", mode = "n" },

	-- ["."] = { '<cmd>lua require("harpoon.ui").nav_next()<cr>', "Harpoon Next" },
	-- { "m.", '<cmd>lua require("harpoon.ui").nav_next()<cr>', desc = "Harpoon Next", mode = "n" },
	-- [","] = { '<cmd>lua require("harpoon.ui").nav_prev()<cr>', "Harpoon Prev" },
	-- { "m,", '<cmd>lua require("harpoon.ui").nav_prev()<cr>', desc = "Harpoon Prev", mode = "n" },
	-- l = { "<cmd>lua require('user.bfs').open()<cr>", "Buffers" }, -- Note: This conflicts with ml above.
	-- { "ml", "<cmd>lua require('user.bfs').open()<cr>", desc = "Buffers", mode = "n" }, -- Note: Keeping commented due to conflict with active ml
	-- s = { "<cmd>Telescope harpoon marks<cr>", "Search Files" }, -- Note: This conflicts with ms below.
	-- { "ms", "<cmd>Telescope harpoon marks<cr>", desc = "Search Files", mode = "n" }, -- Note: Keeping commented due to conflict with commented ms
	-- s = { "<cmd>lua require('telescope').extensions.vim_bookmarks.all({...})<cr>", "Show" }, -- Note: This conflicts with ms above.
	-- { "ms", "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>", desc = "Show Bookmarks", mode = "n" }, -- Note: Keeping commented due to conflict with commented ms
	-- [";"] = { '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon UI" },
	-- { "m;", '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', desc = "Harpoon UI", mode = "n" },
})
