local opt               = vim.opt

-- vim.cmd("colorscheme habamax")

vim.g.netrw_banner      = 0
vim.g.netrw_liststyle   = 0
vim.g.netrw_bufsettings = "nonu nornu"

-- help options

-- Define custom sign symbols for warnings and errors
vim.o.termguicolors     = true
vim.o.signcolumn        = "yes:1"
vim.o.foldcolumn        = "auto:1"

opt.number              = true
opt.relativenumber      = true
opt.expandtab           = true
opt.autoindent          = true
opt.ignorecase          = true
opt.incsearch           = true
opt.spell               = true
opt.cursorline          = true

opt.background          = "dark"

opt.wrap                = false

opt.tabstop             = 04
opt.softtabstop         = 04
opt.shiftwidth          = 04
opt.scrolloff           = 12
opt.cmdheight           = 00

opt.spelllang           = "en_gb"
opt.colorcolumn       = "120" 

opt.path:append("**")
