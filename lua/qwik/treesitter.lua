-- 
-- Partially stolen... (as well) https://github.com/LunarVim/Neovim-from-scratch/blob/08-treesitter/lua/user/treesitter.lua
--

local configs = require("nvim-treesitter.configs")

configs.setup {
    ensure_installed = "maintained",
    sync_install = false,
    ignore_install = { "" },
    highlight = {
        enable = true, -- false = disables the whole extension
        disable = { "" },
        additional_vim_regex_highlighting = true
    },
    indent = { enable = true, disable = { "yaml" } }
}
