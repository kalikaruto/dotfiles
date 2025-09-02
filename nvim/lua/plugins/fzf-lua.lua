return {
	"ibhagwan/fzf-lua",
	lazy = false,
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
			desc = "FZF files",
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "FZF live grep",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "FZF buggers",
		},
		{
			"<leader>fh",
			function()
				require("fzf-lua").help_tags()
			end,
			desc = "FZF live help tags",
		},
		{
			"<leader>fx",
			function()
				require("fzf-lua").diagnostics_document()
			end,
			desc = "fzf diagnostics document",
		},
		{
			"<leader>fX",
			function()
				require("fzf-lua").diagnostics_workspace()
			end,
			desc = "fzf diagnostics workspace",
		},
		{
			"<leader>fs",
			function()
				require("fzf-lua").lsp_document_symbols()
			end,
			desc = "fzf document symbols",
		},
		{
			"<leader>fS",
			function()
				require("fzf-lua").lsp_workspace_symbols()
			end,

			desc = "fzf workspace symbols",
		},
	},
	opts = {},
}
