-- init.lua

-- plugin management
vim.pack.add({
    "https://github.com/lervag/vimtex",
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/kylechui/nvim-surround",
    "https://github.com/farmergreg/vim-lastplace",
    "https://github.com/baskerville/vim-sxhkdrc",
    "https://github.com/imsnif/kdl.vim",
    "https://MartinCornelius/reword.nvim"
})

-- vimtex plugin options
vim.g.tex_flavour = "latex"
vim.g.vimtex_view_method = "skim"
vim.g.vimtex_view_skim_sync = 1
vim.g.vimtex_view_skim_activate = 0
vim.g.vimtex_compiler_latexmk = {
  executable = 'latexmk',
  options = {
    '-pdf',
    '-shell-escape',
    '-interaction=nonstopmode',
    '-file-line-error',
  }
}

-- vimtex cleanup
vim.api.nvim_create_autocmd('BufLeave', {
    pattern = "*.tex",
    callback = function()
        if vim.b.vimtex then
            vim.cmd("VimtexClean")
        end
    end
})

-- treesitter plugin
vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(ev)
    local name, kind = ev.data.spec.name, ev.data.kind
    if name == "nvim-treesitter" and kind == "update" then
      if not ev.data.active then
        vim.cmd.packadd("nvim-treesitter")
      end
      vim.cmd("TSUpdate")
    end
  end
})

require("nvim-treesitter").setup({
  install_dir = vim.fn.stdpath("data") .. "/site"
})

require("nvim-treesitter").install({
  "lua", "vim", "vimdoc", "latex", "yaml",
  "python", "javascript", "typescript", "bash", "markdown",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "lua", "python", "yaml", "javascript", "typescript", "bash", "markdown" },
  callback = function()
    pcall(vim.treesitter.start)
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end
})

-- LSP configuration
require("mason").setup()

vim.lsp.config.pyright = {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", ".git" }
}

vim.lsp.config.lua_ls = {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = { checkThirdParty = false }
    }
  }
}

vim.lsp.config.yamlls = {
  cmd = { "yaml-language-server", "--stdio" },
  filetypes = { "yaml", "yaml.docker-compose" },
  root_markers = { ".git" }
}

vim.lsp.config.texlab = {
  cmd = { "texlab" },
  filetypes = { "tex", "plaintex", "bib" },
  root_markers = { ".latexmkrc", ".git" }
}

vim.lsp.enable({ "pyright", "lua_ls", "yamlls", "texlab" })

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.lsp.completion.enable(true, args.data.client_id, args.buf, { autotrigger = true })
  end
})

-- lsp completion settings
vim.o.pumheight = 10
vim.o.signcolumn = "yes"

-- vim lastplace options
vim.g.lastplace_lastposition = 1
vim.g.lastplace_open_folds = 0
vim.g.lastplace_ignore = "gitcommit,gitrebase,xxd"
vim.g.lastplace_ignore_buftype = "nofile,quickfix,help"

-- reword.nvim
require("reword").setup({ persist = true })

-- completion
vim.opt.completeopt = { "menuone", "noinsert" }

vim.keymap.set("i", "<Tab>", function()
  if vim.fn.pumvisible() == 1 then
    return "<C-n>"
  end
  return "<Tab>"
end, { expr = true })

vim.keymap.set("i", "<S-Tab>", function()
  if vim.fn.pumvisible() == 1 then
    return "<C-p>"
  end
  return "<S-Tab>"
end, { expr = true })

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
vim.opt.linebreak = false

-- text tabs character
vim.opt.list = true
vim.opt.listchars = {
    tab = "> "
}

-- text behaviour
vim.opt.autochdir = true
vim.opt.autoindent = false
vim.opt.clipboard = 'unnamed,unnamedplus'
vim.opt.formatoptions:remove('cro')
vim.opt.textwidth = 80

-- filetype
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

-- source init.lua
vim.api.nvim_create_autocmd('BufWritePost', {pattern = 'init.lua', command = 'source $MYVIMRC'})

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
