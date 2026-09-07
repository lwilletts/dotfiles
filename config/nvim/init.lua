-- init.lua

-- shortcut autocmd
local autocmd = vim.api.nvim_create_autocmd

-- paq bootstrap
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', '--depth', '1',
    'https://github.com/savq/paq-nvim.git',
    install_path
  })
end

-- plugin
require "paq" {
    "savq/paq-nvim",
    "tpope/vim-surround",
    "neovim/nvim-lspconfig",
    "farmergreg/vim-lastplace",
    "baskerville/vim-sxhkdrc",
    "imsnif/kdl.vim",
    -- "github/copilot.vim",
}

-- editorconfig
vim.g.editorconfig = true

-- title
vim.opt.title = true
vim.opt.titlestring = 'nvim: %t'

-- status
vim.opt.shortmess = 'I'
vim.opt.showcmd = false
vim.opt.showmode = true
vim.opt.laststatus = 0

-- terminal colors
vim.opt.background = 'dark'
vim.opt.termguicolors = true

-- vim.g.terminal_color1 = '#1C1C1C'
-- vim.g.terminal_color2 = '#CA3448'
-- vim.g.terminal_color3 = '#60C8B1'
-- vim.g.terminal_color3 = '#C8C660'
-- vim.g.terminal_color4 = '#8BC3E4'
-- vim.g.terminal_color5 = '#B8A0C0'
-- vim.g.terminal_color6 = '#9FB9A8'
-- vim.g.terminal_color7 = '#D9EAE2'

vim.api.nvim_set_hl(0, 'Normal', { fg = "#D9EAE2", bg="#1C1C1C" })
vim.api.nvim_set_hl(0, 'Visual', { fg = "#1C1C1C", bg="#D9EAE2" })
vim.api.nvim_set_hl(0, 'Comment', { fg = "#9FB9A8", bg= "#1C1C1C" })

-- cursor
vim.opt.guicursor = 'n:blinkon0'

-- text view
vim.opt.syntax = 'on'
vim.opt.number = true
vim.opt.wrap = false

-- text behaviour
vim.opt.autochdir = true
vim.opt.autoindent = false
vim.opt.clipboard = 'unnamed,unnamedplus'
vim.opt.formatoptions:remove('cro')
vim.opt.textwidth = 80

-- filetype simple defaults for now
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- mouse
vim.opt.mouse = 'nvi'
vim.opt.mousefocus = true
vim.opt.mousemodel = 'popup'

-- search
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- undo
vim.opt.undodir = "/Users/laurece/.cache/nvim/undodir"
vim.opt.undofile = true
vim.opt.undoreload = 5000
vim.opt.undolevels = 5000

-- window management
vim.opt.splitbelow = true
vim.opt.splitright = true

-- autocmds
autocmd('BufWritePost', {pattern = 'init.lua', command = 'source $MYVIMRC'})

-- key remaps
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>E', '<cmd>edit $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>c', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>V', '<cmd>set spell!<CR>')
vim.keymap.set('n', '<leader>N', '<cmd>set number!<CR>')
vim.keymap.set('n', '<leader>p', '<cmd>bprevious<CR>')
vim.keymap.set('n', '<leader>n', '<cmd>bnext<CR>')
vim.keymap.set('n', '<leader>q', '<cmd>bdelete<CR>')

-- visual
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')
