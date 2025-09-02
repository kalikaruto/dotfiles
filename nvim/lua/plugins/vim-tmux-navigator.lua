-- ================================================================================================
-- TITLE : vim-tmux-navigator
-- ABOUT : Seamless navigation between Vim splits and tmux panes using the same shortcuts.
-- LINKS :
--   > github : https://github.com/christoomey/vim-tmux-navigator
-- ================================================================================================

return {
	"christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
		"TmuxNavigatorProcessList",
	},
	keys = {
		{ "<C-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
		{ "<C-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
		{ "<C-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
		{ "<C-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
		{ "<C-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
	},
}
