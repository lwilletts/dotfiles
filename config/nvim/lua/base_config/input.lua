-- leader
vim.g.mapleader = " "

-- general
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

-- completion
vim.keymap.set("i", "<Tab>", function()
    if vim.fn.pumvisible() == 1 then
        return "<C-n>"
    end

    local col = vim.fn.col(".")
    local line = vim.fn.getline(".")

    if col == 1 or line:sub(col - 1, col -1):match("%s") then
        return "<Tab>"
    end

    return "<C-x><C-n>"
end, { expr = true, noremap = true })

vim.keymap.set("i", "<S-Tab>", function()
    if vim.fn.pumvisible() == 1 then
        return "<C-p>"
    end

    return "<S-Tab>"
end, { expr = true, noremap = true })
