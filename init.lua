-- ---------------------------------------------------------------------- --
-- This config has taken a lot of *inspiration* from ChrisAtMacine.       --
-- » https://youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ --
-- » https://github.com/LunarVim/Neovim-from-scratch                      --
--                                                                        --
-- It shouldn't be a complete rip-off - Hopefully!                        --
-- ---------------------------------------------------------------------- --

if (not vim.g.vscode) then
    -- Basic
    require("qwik.options")
    require("qwik.plugins")
    require("qwik.keymaps")

    -- Auto-completion
    require("qwik.completion")
    require("qwik.lsp")

    -- Plugin configs
    require("qwik.telescope")
    require("qwik.treesitter")

    -- Themes
    --require("qwik.colorscheme")
    vim.cmd "colorscheme darkplus"

    -- Fix cursor...
    vim.cmd "autocmd VimLeave * set guicursor=a:hor20,o:hor50"
else
    -- This config is only for VS Code...
    require("qwik.options")
    require("qwik.keymaps.vscode")
    require("qwik.keymaps.editing")
end

