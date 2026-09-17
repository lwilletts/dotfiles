vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.spell = true
vim.opt_local.textwidth = 100
vim.opt_local.conceallevel = 0
vim.opt_local.concealcursor = "nc"
vim.opt_local.formatoptions:append("t") -- auto-wrap text
vim.opt_local.formatoptions:append("n") -- numbered lists
vim.opt_local.formatoptions:remove("c") -- no comment leader continuation
vim.opt_local.formatoptions:remove("r")
vim.opt_local.formatoptions:remove("o")
vim.opt_local.matchpairs:append("<:>")
vim.opt_local.matchpairs:append("«:»")
