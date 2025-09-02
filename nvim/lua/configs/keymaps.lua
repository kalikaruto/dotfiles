keymap("n", "<M-q>", "<cmd>q<CR>", { desc = "Quit" })
keymap("n", "<M-w>", "<cmd>w<CR>", { desc = "Save" })
keymap("n", "<M-W>", "<cmd>wall<CR>", { desc = "Save" })
keymap("n", "<M-Q>", "<cmd>q!<CR>", { desc = "Quit (force)" })
keymap("n", "<M-a>", "ggVG<CR>", { desc = "Select all & yank" })
keymap({ "i", "n", "v", "c", "x", "s", "o", "t" }, "<M-;>", "<ESC>", { desc = "Esc in all modes" })

-- Center screen
keymap("n", "n", "nzz", { desc = "Next search result (centered)" })
keymap("n", "N", "Nzz", { desc = "Prev search result (centered)" })
keymap("n", "<M-d>", "<C-d>zz", { desc = "Half page down (centered)" })
keymap("n", "<M-u>", "<C-u>zz", { desc = "Half page up (centered)" })
keymap("n", "<M-f>", "<C-f>zz", { desc = "Full page up (centered)" })
keymap("n", "<M-b>", "<C-b>zz", { desc = "Full page up (centered)" })

-- Buffer Navigation
keymap("n", "<M-B>", "<cmd>buffers<CR>", { desc = "List buffers" })
keymap("n", "<M-n>", "<cmd>bnext<CR>", { desc = "Next buffer" })
keymap("n", "<M-p>", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

-- window navigation
keymap("n", "<leader>h", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<leader>j", "<C-w>j", { desc = "Move to bottom window" })
keymap("n", "<leader>k", "<C-w>k", { desc = "Move to top window" })
keymap("n", "<leader>l", "<C-w>l", { desc = "Move to right window" })
keymap("n", "<C-Left>", "<C-w>h", { desc = "Move to left window" })
keymap("n", "<C-Down>", "<C-w>j", { desc = "Move to bottom window" })
keymap("n", "<C-Up>", "<C-w>k", { desc = "Move to top window" })
keymap("n", "<C-Right>", "<C-w>l", { desc = "Move to right window" })

-- splitting and resizing
keymap("n", "<M-V>", "<cmd>vsplit<CR>", { desc = "Split window vertically" })
keymap("n", "<M-H>", "<cmd>split<CR>", { desc = "Split window horizontally" })
keymap("n", "<C-K>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
keymap("n", "<C-J>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
keymap("n", "<C-H>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
keymap("n", "<C-L>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- better indenting
keymap("n", "<M-]>", "v>gv<ESC>", { desc = "Indent right and reselect" })
keymap("v", "<M-]>", ">gv<ESC>", { desc = "Indent right and reselect" })
keymap("n", "<M-[>", "v<gv<ESC>", { desc = "Indent left and reselect" })
keymap("v", "<M-[>", "<gv<ESC>", { desc = "Indent left and reselect" })

-- quick config editing
keymap("n", "<leader>rc", "<cmd>e ~/.config/nvim/<CR>", { desc = "Edit nvim" })

-- better J behaviour
keymap("n", "<M-J>", "mzJ`z", { desc = "Join without leaving" })

-- insert quick lines
keymap("n", "<M-o>", "o<ESC>", { desc = "Insert a line below" })
keymap("n", "<M-O>", "O<ESC>", { desc = "Insert a line above" })

-- Copy = yank normally (goes into 0)
keymap("v", "<M-c>", "y", { desc = "Copy (goes to register 0)" })
keymap("n", "<M-c>", "yy", { desc = "Copy line (goes to register 0)" })

-- Paste always from register 0 (last yank, ignores deletes)
keymap("n", "<M-v>", '"0p', { desc = "Paste last yank (safe)" })
keymap("v", "<M-v>", '"0p', { desc = "Paste last yank over selection (safe)" })

-- commentings
keymap("n", "<M-/>", "<cmd>normal gcc<CR>", { desc = "Toggle comment line" })
keymap("x", "<M-/>", "<cmd>normal gc<CR>", { desc = "Toggle comment block" })

-- ================================================================================================
-- PLUGINS
-- ================================================================================================

-- nvim-tree
keymap("n", "<leader>f", "<cmd>NvimTreeFindFile<CR>", { desc = "Focus on file" })
keymap("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Focus on file" })
keymap("n", "<M-e>", "<cmd>NvimTreeToggle<CR>", { desc = "Focus on file" })
