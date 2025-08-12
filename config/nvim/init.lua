-- init.lua

-- shortcut
local autocmd = vim.api.nvim_create_autocmd

local function clone_paq()
    local path = vim.fn.stdpath("data") .. "/site/pack/paqs/start/paq-nvim"
    local is_installed = vim.fn.empty(vim.fn.glob(path)) == 0
    if not is_installed then
        vim.fn.system { "git", "clone", "--depth=1", "https://github.com/savq/paq-nvim.git", path }
        return true
    end
end

local function bootstrap_paq(packages)
    local first_install = clone_paq()
    vim.cmd.packadd("paq-nvim")
    local paq = require("paq")
    if first_install then
        vim.notify("Installing plugins... If prompted, hit Enter to continue.")
    end

    -- Read and install packages
    paq(packages)
    paq.install()
end

-- Call helper function
bootstrap_paq {
    "savq/paq-nvim",
}

-- plugin
require "paq" {
    "savq/paq-nvim",
    "tpope/vim-surround",
    "neovim/nvim-lspconfig",
    "echasnovski/mini.nvim",
    "folke/tokyonight.nvim",
    "baskerville/vim-sxhkdrc",
    "imsnif/kdl.vim",
    "github/copilot.vim",
    "farmergreg/vim-lastplace",
}

-- plugin startup
require('mini.pick').setup({})
require('mini.files').setup({})

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
vim.opt.termguicolors = false
vim.cmd.colorscheme('habamax')

-- text view
vim.opt.syntax = 'on'
vim.opt.number = false
vim.opt.wrap = false

-- text behaviour
vim.opt.autochdir = true
vim.opt.autoindent = false
vim.opt.clipboard = 'unnamed,unnamedplus'
vim.opt.formatoptions:remove('cro')

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
vim.opt.undodir = "/home/fyr/.cache/nvim/undodir"
vim.opt.undofile = true
vim.opt.undoreload = 5000
vim.opt.undolevels = 5000

-- window management
vim.opt.splitbelow = true
vim.opt.splitright = true

-- autocmd
autocmd('BufWritePost', {pattern = 'init.lua', command = 'source $MYVIMRC'})

-- key remaps
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>E', '<cmd>edit $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>c', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>V', '<cmd>set spell!<CR>')
vim.keymap.set('n', '<leader>n', '<cmd>set number!<CR>')

vim.keymap.set('n', '<leader><space>', '<cmd>Pick buffers<cr>', {desc = 'Search open files'})
vim.keymap.set('n', '<leader>ff', '<cmd>Pick files<cr>', {desc = 'Search all files'})
vim.keymap.set('n', '<leader>fh', '<cmd>Pick help<cr>', {desc = 'Search help tags'})
