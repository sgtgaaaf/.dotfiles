-- fold
vim.cmd(":set foldmethod=indent")
-- vim.opt.foldmethod = "syntax"
-- visuals
vim.cmd(":highlight Folded guibg=#3a3a3a guifg=none")
vim.cmd(":highlight FoldColumn guibg=#292a2f guifg=#73797E")
-- foldtext
-- vim.cmd(":set foldtext = getline(v:foldstart)")
-- vim.opt.foldclose=">"
-- vim.cmd("set fillchars=stl:\ ,stlnc:\ ,vert:│,fold:·,diff:-")
vim.opt.fillchars="fold: ,foldclose:›,foldsep: ,foldopen:⌄"
