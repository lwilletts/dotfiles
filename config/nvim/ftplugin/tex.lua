vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.spell = true
vim.opt_local.textwidth = 80
vim.opt_local.conceallevel = 0
vim.opt_local.concealcursor = "nc"
vim.opt_local.formatoptions:append("t") -- auto-wrap text
vim.opt_local.formatoptions:append("n") -- numbered lists
vim.opt_local.formatoptions:remove("c") -- no comment leader continuation
vim.opt_local.formatoptions:remove("r")
vim.opt_local.formatoptions:remove("o")
vim.opt_local.matchpairs:append("<:>")
vim.opt_local.matchpairs:append("«:»")

-- local group = vim.api.nvim_create_augroup("TexAutoFormat", { clear = false })
-- -- Clear only this buffer's autocmds so re-sourcing the ftplugin doesn't stack them
-- vim.api.nvim_clear_autocmds({ group = group, buffer = 0 })
--
-- vim.api.nvim_create_autocmd("InsertLeave", {
--   buffer = ev.buf,
--   callback = function()
--     local view = vim.fn.winsaveview()
--     vim.cmd("silent! normal! gqip")
--     vim.fn.winrestview(view)
--   end
-- })
