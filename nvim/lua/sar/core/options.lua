local opt             = vim.opt

vim.cmd("colorscheme habamax")

vim.g.netrw_banner    = 0
vim.g.netrw_liststyle = 0

opt.number            = true
opt.relativenumber    = true
opt.expandtab         = true
opt.autoindent        = true
opt.ignorecase        = true
opt.incsearch         = true
opt.spell             = true

opt.termguicolors     = true
opt.background        = "dark"
opt.signcolumn        = "yes"

opt.wrap              = false

opt.tabstop           = 03
opt.shiftwidth        = 03
opt.scrolloff         = 12
opt.cmdheight         = 00

opt.spelllang         = "en_gb"
opt.colorcolumn       = "120"

opt.path:append("**")
