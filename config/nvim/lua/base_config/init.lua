local config_dir = vim.fn.stdpath("config") .. "/lua/base_config"

for name, type in vim.fs.dir(config_dir) do
    if type == "file" and name:match("%.lua$") and name ~= "init.lua" then
        local module = name:gsub("%.lua$", "")
        require("base_config." .. module)
    end
end
