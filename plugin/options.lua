vim.o.tabstop        = 4        -- tab size
vim.o.softtabstop    = 4
vim.o.shiftwidth     = 4        -- size of indents
vim.o.expandtab      = true     -- tabs are spaces now
vim.o.smartindent    = true     -- indents on new line creation
vim.o.number         = true     -- line numbers (relative to position)
vim.o.relativenumber = true     -- line numbers (relative to position)
vim.o.wrap           = false    -- text doesn't wrap
vim.o.ignorecase     = true     -- case insensitive search
vim.o.smartcase      = true     -- turns off the above if mixed case search string
vim.o.splitbelow     = true     -- split mor intuitively
vim.o.splitright     = true
vim.o.incsearch      = true     -- shows search results while still searching
vim.o.undofile       = true     -- saves undo history to a file
vim.o.swapfile       = false    -- doesn't create a swap file when switching buffers
vim.o.colorcolumn    = '80'     -- sets colour colomn location
vim.o.scl            = 'no'     -- turns off sign column
vim.o.spell          = false    -- turns off spell checking
vim.o.wrap           = false    -- turns off text wrapping
vim.o.tw             = 0        -- sets textwidth to 0
vim.o.fdm            = 'indent' -- folds by indent and prevents small folds

vim.cmd[[let $BASH_ENV = "~/.config/bash/aliases"]]