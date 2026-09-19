vim.pack.add({ "https://github.com/nvim-treesitter/nvim-treesitter" })

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
    "python", "javascript", "typescript", "bash", "markdown"
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "lua", "vim", "vimdoc", "latex", "yaml",
        "python", "javascript", "typescript", "bash", "markdown"
    },

    callback = function() vim.treesitter.start() end
})
