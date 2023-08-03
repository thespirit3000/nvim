--[[ local parser_configs = require("nvim-treesitter.parsers").get_parser_configs() ]]

--[[ parser_configs.norg = { ]]
--[[ 	install_info = { ]]
--[[ 		url = "https://github.com/nvim-neorg/tree-sitter-norg", ]]
--[[ 		files = { "src/parser.c", "src/scanner.cc" }, ]]
--[[ 		branch = "main", ]]
--[[ 	}, ]]
--[[ } ]]

--[[ parser_configs.norg_meta = { ]]
--[[ 	install_info = { ]]
--[[ 		url = "https://github.com/nvim-neorg/tree-sitter-norg-meta", ]]
--[[ 		files = { "src/parser.c" }, ]]
--[[ 		branch = "main", ]]
--[[ 	}, ]]
--[[ } ]]

--[[ parser_configs.norg_table = { ]]
--[[ 	install_info = { ]]
--[[ 		url = "https://github.com/nvim-neorg/tree-sitter-norg-table", ]]
--[[ 		files = { "src/parser.c" }, ]]
--[[ 		branch = "main", ]]
--[[ 	}, ]]
--[[ } ]]

-- require("nvim-treesitter.configs").setup({
-- 	--> parsers <--
-- 	ensure_installed = {
-- 		"c",
-- 		"cpp",
-- 		"css",
-- 		"bash",
-- 		"fish",
-- 		"javascript",
-- 		"lua",
-- 		"typescript",
-- 	},
-- 	sync_install = false,
-- 	highlight = {
-- 		enable = true,
-- 		additional_vim_regex_highlighting = false,
-- 	},
-- 	indent = {
-- 		enable = true,
-- 	},
-- 	--> textobjects selection <--
-- 	textobjects = {
-- 		select = {
-- 			enable = true,
-- 			-- Automatically jump forward to textobj, similar to targets.vim
-- 			lookahead = true,
-- 			keymaps = {
-- 				-- You can use the capture groups defined in textobjects.scm
-- 				["af"] = "@function.outer",
-- 				["if"] = "@function.inner",
-- 				["ac"] = "@class.outer",
-- 				["ic"] = "@class.inner",
-- 			},
-- 		},
-- 		--> LSP interop <--
-- 		lsp_interop = {
-- 			enable = true,
-- 			border = "none",
-- 			peek_definition_code = {
-- 				["<leader>df"] = "@function.outer",
-- 				["<leader>dF"] = "@class.outer",
-- 			},
-- 		},
-- 	},
-- 	--> moving between textobjext <--
-- 	move = {
-- 		enable = true,
-- 		set_jumps = true, -- whether to set jumps in the jumplist
-- 		goto_next_start = {
-- 			["]]"] = "@function.outer",
-- 			["]m"] = "@class.outer",
-- 		},
-- 		goto_next_end = {
-- 			["]["] = "@function.outer",
-- 			["]M"] = "@class.outer",
-- 		},
-- 		goto_previous_start = {
-- 			["[["] = "@function.outer",
-- 			["[m"] = "@class.outer",
-- 		},
-- 		goto_previous_end = {
-- 			["[]"] = "@function.outer",
-- 			["[M"] = "@class.outer",
-- 		},
-- 	},
-- 	--> treesitter playground <--
-- 	playground = {
-- 		enable = true,
-- 		disable = {},
-- 		updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
-- 		persist_queries = false, -- Whether the query persists across vim sessions
-- 		keybindings = {
-- 			toggle_query_editor = "o",
-- 			toggle_hl_groups = "i",
-- 			toggle_injected_languages = "t",
-- 			toggle_anonymous_nodes = "a",
-- 			toggle_language_display = "I",
-- 			focus_language = "f",
-- 			unfocus_language = "F",
-- 			update = "R",
-- 			goto_node = "<cr>",
-- 			show_help = "?",
-- 		},
-- 	},
-- 	--> refactor module
-- 	refactor = {
-- 		smart_rename = {
-- 			enable = true,
-- 			keymaps = {
-- 				smart_rename = "grr",
-- 			},
-- 		},
-- 	},
-- 	--> rainbow tags
-- 	rainbow = {
-- 		enable = true,
-- 		extended_mode = true,
-- 		max_file_lines = nil,
-- 	},
-- 	context_commentstring = {
-- 		enable = false,
-- 		enable_autocmd = false,
-- 	},
-- })
require 'nvim-treesitter.install'.compilers = { 'zig' }
-- require 'nvim-treesitter.install'.prefer_git = false
require'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
  
	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,
  
	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,
  
	-- List of parsers to ignore installing (for "all")
	ignore_install = { "javascript" },
  
	---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
  
	highlight = {
	  enable = true,
  
	  -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
	  -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
	  -- the name of the parser)
	  -- list of language that will be disabled
	  disable = { "c", "rust" },
	  -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
	  disable = function(lang, buf)
		  local max_filesize = 100 * 1024 -- 100 KB
		  local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
		  if ok and stats and stats.size > max_filesize then
			  return true
		  end
	  end,
  
	  -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
	  -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
	  -- Using this option may slow down your editor, and you may see some duplicate highlights.
	  -- Instead of true it can also be a list of languages
	  additional_vim_regex_highlighting = false,
	},
  }