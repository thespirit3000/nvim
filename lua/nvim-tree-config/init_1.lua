-- require("nvim-tree").setup({
-- 	-- auto_close = true,
-- 	diagnostics = {
-- 		enable = true,
-- 	},
-- 	--[[ view = { ]]
-- 	--[[ 	auto_resize = true, ]]
-- 	--[[ }, ]]
-- })

--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
--vim.opt.termguicolors = true

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	renderer = {
		group_empty = true,
		icons = {
			webdev_colors = true,
			git_placement = "before",
			modified_placement = "after",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
				modified = true,
			},
			git = {
				unstaged = "",
				staged = "S",
				unmerged = "",
				renamed = "➜",
				untracked = "U",
				deleted = "",
				ignored = "◌",
			},
		},
	},
	filters = {
		dotfiles = true,
	},
})
