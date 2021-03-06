local fn = vim.fn

-- Automatically install packer if it isn't installed already.
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("Packer failed!")
    return
end

-- Have packer use a popup window instead of split.
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- Have packer manage itself
    use "wbthomason/packer.nvim"

    -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/popup.nvim"

    -- Useful lua functions used ny lots of plugins
    use "nvim-lua/plenary.nvim"

    -- Colorschemes
    -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out...
    use "lunarvim/darkplus.nvim"

    -- Treesitter
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use "p00f/nvim-ts-rainbow"
    use "nvim-treesitter/playground"

    -- Telescope (a finder)
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-media-files.nvim"

    -- Autocompletion
    -- Currently using `nvim-cmp` - considering `nvim_coq`...
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "saadparwaiz1/cmp_luasnip"
    -- LSP support
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"

    -- Snippets
    use "L3MON4D3/LuaSnip" -- Snippet engine.
    use "rafamadriz/friendly-snippets" -- A bunch of snippets to use.

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
