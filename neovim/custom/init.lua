require("plugins")

-- Editor Modes
vim.cmd("command Normal set laststatus=2 showtabline=2 number relativenumber")
vim.cmd("command Zen set laststatus=0 showtabline=0 nonumber norelativenumber")

-- identation config
vim.opt.tabstop = 4
vim.opt.expandtab = false
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true

-- interface stuff
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.cursorline = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.signcolumn = "yes"
-- vim.opt.showtabline = 2
vim.opt.laststatus = 2

function _G.mode_label()
  local modes = {
    n = "NORMAL",
    i = "INSERT",
    v = "VISUAL",
    V = "V-LINE",
	["\22"] = "V-BLOCK",
    c = "COMMAND",
    R = "REPLACE",
    t = "TERMINAL",
	s = "SELECT",
	S = "S-LINE",
	["\19"] = "S-BLOCK",
	nt = "NORMAL",
	no = "OPERATOR PENDING"
  }
  local m = vim.api.nvim_get_mode().mode
  return modes[m] or m
end

vim.opt.showmode = false
vim.opt.statusline = " %#StatusLineMode# %{v:lua.mode_label()} %#LineNr# %F%m%r%h%w %#CursorColumn# %y %p%% %l:%c"
vim.opt.fillchars = { eob = " " }

-- general configs
vim.opt.encoding = "utf-8"
vim.opt.autoread = true
vim.opt.scrolloff = 0
vim.opt.wildmenu = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.undolevels = 1000
vim.opt.shell = "/usr/bin/zsh"

-- system clipboard
-- vim.opt.clipboard = "unnamed"
-- vim.keymap.set('n', 'dd', '"+dd')
-- vim.keymap.set('v', 'd', '"+d')
-- vim.keymap.set('n', 'yy', '"+yy')
-- vim.keymap.set('v', 'y', '"+y')
-- vim.keymap.set('n', 'p', '"+p')

-- leader key
vim.g.mapleader = "\\"

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
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { silent = true }) -- Facilita sair do Terminal mode.

-- Terminal nativo do Neovim
local terminal_height = 9

-- Encontra o terminal principal, mesmo quando sua janela está oculta.
local function find_main_terminal()
  for _, bufnr in ipairs(vim.api.nvim_list_bufs()) do
    if vim.api.nvim_buf_is_valid(bufnr)
      and vim.bo[bufnr].buftype == "terminal"
      and vim.b[bufnr].terminal_role == "main"
    then
      return bufnr
    end
  end
end

-- Abre ou oculta o terminal principal.
local function toggle_terminal()
  local bufnr = find_main_terminal()

  -- Se ainda não existe, cria um terminal.
  if not bufnr then
    vim.cmd("botright " .. terminal_height .. "split")
    vim.cmd("terminal")
    vim.b.terminal_role = "main"
    return
  end

  -- Se já está visível nesta aba, oculta sua janela.
  for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
    if vim.api.nvim_win_get_buf(win) == bufnr then
      vim.api.nvim_set_current_win(win)
      vim.cmd("hide")
      return
    end
  end

  -- Se estava oculto, reabre o mesmo buffer.
  vim.cmd("botright " .. terminal_height .. "split")
  vim.cmd("buffer " .. bufnr)
  vim.cmd("startinsert")
end

-- Abre um terminal adicional, independente do principal.
local function new_terminal()
  vim.cmd("botright " .. terminal_height .. "split")
  vim.cmd("terminal")
  vim.b.terminal_role = "extra"
end

-- Atalhos globais.
vim.keymap.set("n", "<leader>tt", toggle_terminal, {
  desc = "Alternar terminal principal",
})

vim.keymap.set("n", "<leader>tT", new_terminal, {
  desc = "Criar novo terminal",
})

-- Remove a statusline do terminal
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
	vim.opt.statusline = " %#StatusLineMode# %{v:lua.mode_label()} %#LineNr# %#CursorColumn# %y %p%% %l:%c"
  end,
})
