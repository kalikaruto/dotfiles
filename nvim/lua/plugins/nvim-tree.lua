return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	config = function()
		-- remove bg color from the NvimTree window
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=NONE]])

		require("nvim-tree").setup({
			filters = {
				dotfiles = false, --show hidden files
				git_ignored = false,
				custom = {},
			},
			view = {
				adaptive_size = true, --for large files
			},
		})
	end,
}
