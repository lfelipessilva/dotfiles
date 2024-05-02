require("nvim-tree").setup({
	view = { adaptive_size = true },
	filters = {
		dotfiles = false,
		git_ignored = false,
	},
	update_focused_file = {
		enable = true,
	},
})
