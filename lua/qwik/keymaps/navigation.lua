local opts     = { noremap = true, silent = true }
local keymap   = vim.api.nvim_set_keymap

-- Window navigation with Shift + h,j,k,l
keymap("n", "<S-h>", "<C-w>h", opts)
keymap("n", "<S-j>", "<C-w>j", opts)
keymap("n", "<S-k>", "<C-w>k", opts)
keymap("n", "<S-l>", "<C-w>l", opts)

-- Window navigation with Shift + Arrows
keymap("n", "<S-Left>",  "<C-w>h", opts)
keymap("n", "<S-Down>",  "<C-w>j", opts)
keymap("n", "<S-Up>",    "<C-w>k", opts)
keymap("n", "<S-Right>", "<C-w>l", opts)

-- Resize windows with Ctrl + h,j,k,l
keymap("n", "<C-k>", ":resize +2<CR>", opts)
keymap("n", "<C-j>", ":resize -2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize +2<CR>", opts)

-- Resize windows with Ctrl + Arrows
keymap("n", "<C-Up>",    ":resize +2<CR>", opts)
keymap("n", "<C-Down>",  ":resize -2<CR>", opts)
keymap("n", "<C-Left>",  ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<M-l>", ":bnext<CR>", opts)
keymap("n", "<M-h>", ":bprevious<CR>", opts)

-- Navigation in insertmode
keymap("i", "<CS-Left>",  "<C-w>h", opts)
keymap("i", "<CS-Down>",  "<C-w>j", opts)
keymap("i", "<CS-Up>",    "<C-w>k", opts)
keymap("i", "<CS-Right>", "<C-w>l", opts)

-- Telescope - find files
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("i", "<C-p>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)

-- Telescope coolio
keymap("n", "<C-t>", "<cmd>Telescope live_grep<cr>", opts)
