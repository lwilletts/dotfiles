-- init.lua
require("base_config")
require("plugin_config")

-- editorconfig
vim.g.editorconfig = true

-- window title
vim.opt.title = true
vim.opt.titlestring = 'nvim: %t'

-- status
vim.opt.shortmess = 'I'
vim.opt.showcmd = false
vim.opt.showmode = true
vim.opt.laststatus = 0

-- terminal colors
vim.opt.background = 'light'
vim.opt.termguicolors = true

-- vim.g.terminal_color1 = '#1C1C1C'
-- vim.g.terminal_color2 = '#CA3448'
-- vim.g.terminal_color3 = '#60C8B1'
-- vim.g.terminal_color3 = '#C8C660'
-- vim.g.terminal_color4 = '#8BC3E4'
-- vim.g.terminal_color5 = '#B8A0C0'
-- vim.g.terminal_color6 = '#9FB9A8'
-- vim.g.terminal_color7 = '#D9EAE2'

-- vim.api.nvim_set_hl(0, 'Normal', { fg = "#D9EAE2", bg="#1C1C1C" })
-- vim.api.nvim_set_hl(0, 'Visual', { fg = "#1C1C1C", bg="#D9EAE2" })
-- vim.api.nvim_set_hl(0, 'Comment', { fg = "#9FB9A8", bg= "#1C1C1C" })

-- cursor
vim.opt.guicursor = 'n:blinkon0'

-- text view
vim.opt.syntax = 'on'
vim.opt.number = true
vim.opt.wrap = false
vim.opt.linebreak = false

-- text tabs character
vim.opt.list = true
vim.opt.listchars = { tab = "> " }

-- text behaviour
vim.opt.autochdir = true
vim.opt.autoindent = false
vim.opt.clipboard = 'unnamed,unnamedplus'
vim.opt.formatoptions:remove('cro')
vim.opt.textwidth = 80

-- default filetype
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- completion
vim.opt.pumheight = 20
vim.opt.signcolumn = "yes"
vim.opt.complete = ".,w,b,u,t,i"
vim.opt.completeopt = { "menuone", "noselect" }

-- menu completion
vim.opt.wildmenu = true
vim.opt.wildmode = "longest:full,full"

-- mouse
vim.opt.mouse = 'nvi'
vim.opt.mousefocus = true
vim.opt.mousemodel = 'popup'

-- search
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- undo
vim.opt.undodir = "/Users/laurence/.cache/nvim/undodir"
vim.opt.undofile = true
vim.opt.undoreload = 5000
vim.opt.undolevels = 5000

-- window management
vim.opt.splitbelow = true
vim.opt.splitright = true
