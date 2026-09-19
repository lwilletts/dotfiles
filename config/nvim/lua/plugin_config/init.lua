local config_dir = vim.fn.stdpath("config") .. "/lua/plugin_config"

for name, type in vim.fs.dir(config_dir) do
    if type == "file" and name:match("%.lua$") and name ~= "init.lua" then
        local module = name:gsub("%.lua$", "")
        require("plugin_config." .. module)
    end
end
