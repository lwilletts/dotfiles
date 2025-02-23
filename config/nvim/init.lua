-- fyr init.lua

-- title
vim.opt.title = true
vim.opt.titlestring = 'nvim: %t'

-- status
vim.opt.shortmess = 'I'
vim.opt.showcmd = false
vim.opt.showmode = true
vim.opt.laststatus = 0

-- colours
vim.opt.background = 'dark'

-- text view
vim.opt.syntax = 'on'
vim.opt.number = true
vim.opt.wrap = false

-- text behaviour
vim.opt.autochdir = true
vim.opt.autoindent = false
-- vim.opt.clipboard 'unnamedplus'
vim.opt.formatoptions:remove('cro')

-- vim.opt.textwidth = '120'

-- filetype

-- mouse
vim.opt.mouse = 'nvi'
vim.opt.mousefocus = true
vim.opt.mousemodel = 'popup'

-- search 
vim.opt.incsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- wildcard match

-- window management




