-- source init.lua
vim.api.nvim_create_autocmd('BufWritePost', {pattern = 'init.lua', command = 'source $MYVIMRC'})
