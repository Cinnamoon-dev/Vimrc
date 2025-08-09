-- leader key
vim.g.mapleader = "\\"

require("config.lazy")

-- Editor Modes
vim.cmd("command Normal set laststatus=2 showtabline=2 number relativenumber")
vim.cmd("command Zen set laststatus=0 showtabline=0 nonumber norelativenumber")

-- identation config
vim.opt.tabstop = 8
vim.opt.expandtab = false
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

-- interface stuff
vim.opt.signcolumn = "yes"
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
-- vim.opt.showtabline = 2
vim.opt.laststatus = 2
vim.opt.statusline = "%#LineNr# %F%m%r%h %w %#CursorColumn# %y %p%% %l:%c"
vim.opt.fillchars = { eob = " " }

-- general configs
vim.opt.updatetime = 300
vim.opt.encoding = "utf-8"
vim.opt.autoread = true
vim.opt.scrolloff = 0
vim.opt.wildmenu = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.undolevels = 1000

-- system clipboard
-- vim.opt.clipboard = "unnamed"
-- vim.keymap.set('n', 'dd', '"+dd')
-- vim.keymap.set('v', 'd', '"+d')
-- vim.keymap.set('n', 'yy', '"+yy')
-- vim.keymap.set('v', 'y', '"+y')
-- vim.keymap.set('n', 'p', '"+p')


-- netrw
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 0
vim.g.netrw_keepdir = 1

-- buffer
vim.opt.hidden = true
vim.opt.confirm = true
vim.opt.swapfile = false

-- window
vim.opt.splitright = true

-- color theme
vim.cmd.colorscheme("min-theme")

-- keymaps
vim.keymap.set('n', '<leader>e', ':20Lexplore<CR><C-l>')
vim.keymap.set('n', '<leader>b', ':ls<CR>:b')
