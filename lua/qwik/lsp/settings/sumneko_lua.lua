--
-- This file was stolen from: https://github.com/LunarVim/Neovim-from-scratch/blob/06-LSP/lua/user/lsp/settings/sumneko_lua.lua
--

return {
    settings = {

        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.stdpath("config") .. "/lua"] = true,
                },
            },
        },
    },
}
