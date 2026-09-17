vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.spell = true
vim.opt_local.textwidth = 0
vim.opt_local.conceallevel = 2
vim.opt_local.formatoptions:append("n") -- recognise numbered lists
vim.opt_local.formatoptions:append("t") -- auto-wrap comments (markdown paragraphs)
vim.opt_local.formatoptions:remove("c") -- don't auto-wrap comment leaders
vim.opt_local.formatoptions:remove("r") -- don't auto-insert comment leaders
vim.opt_local.formatoptions:remove("o") -- don't continue comment leaders
