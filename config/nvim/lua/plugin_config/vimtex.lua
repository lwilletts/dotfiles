vim.pack.add({ "https://github.com/lervag/vimtex" })

vim.g.tex_flavour = "latex"
vim.g.vimtex_view_method = "zathura"
vim.g.vimtex_view_automatic = 1
vim.g.vimtex_view_forward_search_on_start = 0
vim.g.vimtex_quickfix_mode = 0
vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
  executable = 'latexmk',
  options = {
    "-pdf",
    "-shell-escape",
    "-verbose",
    "-interaction=nonstopmode",
    "-synctex=1",
    "-file-line-error"
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
