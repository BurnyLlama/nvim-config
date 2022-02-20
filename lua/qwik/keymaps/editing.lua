local opts     = { noremap = true, silent = true }
local keymap   = vim.api.nvim_set_keymap

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Indent by tapping < > once instead of twice.
keymap("n", "<", "<<", opts)
keymap("n", ">", ">>", opts)

-- Move lines up/down. Alt + j,k
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("i", "<A-j>", ":m .+1<CR>==", opts)
keymap("i", "<A-k>", ":m .-2<CR>==", opts)

-- Move lines up/down. Alt + Up,Down
keymap("n", "<A-Down>", ":m .+1<CR>==", opts)
keymap("n", "<A-Up>",   ":m .-2<CR>==", opts)
keymap("v", "<A-Down>", ":m .+1<CR>==", opts)
keymap("v", "<A-Up>",   ":m .-2<CR>==", opts)
keymap("i", "<A-Down>", ":m .+1<CR>==", opts)
keymap("i", "<A-Up>",   ":m .-2<CR>==", opts)

-- Visual block mode shittery...
keymap("x", "J",        ":move '>+1<CR>gv-gv", opts)
keymap("x", "K",        ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>",    ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>",    ":move '<-2<CR>gv-gv", opts)
keymap("x", "S-Down",   ":move '>+1<CR>gv-gv", opts)
keymap("x", "S-Up",     ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>",   ":move '<-2<CR>gv-gv", opts)

-- Ctrl + o yields newline.
keymap("i", "<C-o>", "<esc>o", opts)
keymap("i", "<C-S-o>", "<esc>O", opts) -- HOW WORKS?!?!?!?!?!?!
