--
-- To get all options you can use `:help options`
--

local o = vim.opt

-- Automatically indent lines
o.autoindent = true

-- If a file changes outside nvim, reload it.
o.autoread   = false

-- Adjust background ( "dark" | "light" )
o.background = "dark"

-- Backups
o.backup = false

-- Wrapped indented lines will continue to be indented.
o.breakindent = true

-- C-style indentation (False; using smart indent.)
o.cindent = false

-- Clipboard
o.clipboard = "unnamed"

-- Number of screen lines to use for the command-line.
o.cmdheight = 2

-- A comma separated list of options for Insert mode completion. (WTF?)
o.completeopt = { "menuone", "preview", "noinsert", "noselect" }

-- Get a dialog  when running `:q` instead of only info - when unsaved changed buffer.
o.confirm = true

-- Copy indent from previous line.
o.copyindent = true

-- Highlight the current line.
o.cursorline = true

-- Comma separated list of settings for how 'cursorline' is displayed.
o.cursorlineopt = "both" -- A.k.a. "line,number"

-- Encoding :))
o.fileencoding = "utf-8"

-- Yes. "Configures the cursor style for each mode. Works in the GUI and manyterminals."
o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- Highlight all search matches! :D
o.hlsearch = true

-- Ignore case when searching
o.ignorecase = true

-- When this option is set, the screen will not be redrawn while executing macros, registers and other commands that have not been typed.
o.lazyredraw = true

-- List mode: By default, show tabs as ">", trailing spaces as "-", and non-breakable space characters as "+".
o.list = true

-- Set the chars to be used.
--o.listchars = "tab:ﲖ ,space:∙,lead:•,trail:•"

-- Allow using a mouse. a = in all modes.
o.mouse = "a"

-- Line numbers! :D
o.number = true

-- Relative line numbers...
o.relativenumber = false

-- Minimum number width
o.numberwidth = 4

-- Pop-up-menu height
o.pumheight = 10

-- Tab bullshit (Use 4 spaces.)
o.shiftwidth = 4
o.tabstop = 4
o.softtabstop = 4
o.expandtab = true

-- Unsure what this does, but yeah -.-
vim.opt.shortmess:append "c"

-- On by default, but who cares?
o.showmode = true

-- Show tabs (Always)
o.showtabline = 2

-- Smarter indent or something....
o.smartindent = true

-- Basically remove "space tabs"
o.smarttab = true

-- Splits
o.splitright = true
o.splitbelow = true

-- Keep this on, unless doing confidential work?
o.swapfile = true

-- Syntax highlighting! :D
o.syntax = "ON"

-- Cooler colours or something...
o.termguicolors = true

-- Timeout length. (Read the docs IG.)
o.timeoutlen = 1000

-- Keep undos.
o.undofile = true

-- Update time.
o.updatetime = 300

-- Allow other keys to wrap around line breaks. (Bad explantation; check docs.)
o.whichwrap = "<,>,[,]"

-- Make a backup before overwriting a file.  The backup is removed after the file was successfully written, unless the 'backup' option is also on.
o.writebackup = true



-- That's all folks! :D
