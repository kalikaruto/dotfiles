opt = vim.opt

-- Basic Settings
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.scrolloff = 10
opt.sidescrolloff = 8
opt.wrap = false
opt.cmdheight = 1
opt.spelllang = { "en", }

-- Tabbing / Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 3
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.grepprg = "rg --vimgrep"
opt.grepformat = "%f:%l:%c:%m"

-- Search Settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Visual Settings
opt.termguicolors = true
opt.signcolumn = "yes"
opt.colorcolumn = "100"
opt.showmatch = true
opt.matchtime = 2
opt.completeopt = "menuone,noinsert,noselect"
opt.showmode = true
opt.pumheight = 10
opt.pumblend = 10
opt.winblend = 0
opt.conceallevel = 0
opt.concealcursor = ""
opt.lazyredraw = false
opt.redrawtime = 10000
opt.maxmempattern = 20000
opt.synmaxcol = 300

-- File Handling
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undofile = true
opt.updatetime = 300
opt.timeoutlen = 500
opt.ttimeoutlen = 0
opt.autoread = true
opt.autowrite = false
opt.laststatus = 2
opt.statusline:append("%F %m %r %y")
opt.diffopt:append("vertical")
opt.diffopt:append("algorithm:patience")
opt.diffopt:append("linematch:60")

-- Set Undo dir
local undodir = "~/.local/share/nvim/undodir"
opt.undodir = vim.fn.expand(undodir)
local undodir_path = vim.fn.expand(undodir)
if vim.fn.isdirectory(undodir_path) == 0 then
    vim.fn.mkdir(undodir_path, "p")
end

-- Behaviour Settings
opt.errorbells = false
opt.backspace = "indent,eol,start"
opt.autochdir = false
opt.iskeyword:append("-")
opt.path:append("**")
opt.selection = "inclusive"
opt.mouse = "a"
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.encoding = "UTF-8"
opt.wildmenu = true
opt.wildmode = "longest:full,full"
opt.wildignorecase = true

-- Cursor Settings
-- opt.guicursor = {
--     "n-v-c:block",
--     "i-ci-ve:block",
--     "r-cr:hor20",
--     "o:hor50",
--     "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
--     "sm:block-blinkwait175-blinkoff150-blinkon175",
-- }
opt.guicursor = {
    "n-v-c:block-Cursor",     -- solid block in normal/visual/cmd, no blink
    "i-ci-ve:block-blinkwait700-blinkoff400-blinkon250-Cursor",
    "r-cr:hor10-blinkwait700-blinkoff400-blinkon250-Cursor",
    "o:hor50-Cursor",         -- underline in operator-pending
    "sm:block-blinkwait175-blinkoff150-blinkon175-Cursor", -- smooth insert
}
-- Folding Settings
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldlevel = 90

-- Split Behaviour
opt.splitbelow = true
opt.splitright  = true
















