vim.pack.add({ "https://github.com/lervag/vimtex" })

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
