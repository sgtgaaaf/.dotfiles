
-- template : vim.keymap.set("mode", "new key", "desired-function", { desc = " for the whichkey "})
-- template-blank : vim.keymap.set("n", "", "<>", { desc = "  "})
--
vim.g.mapleader = " "
local map = vim.keymap


-- custom keymaps
map.set('i','jk','<ESC>')
map.set('n', '<leader>ee', vim.cmd.Ex )
map.set('n', '<leader>bx', vim.cmd.q )
map.set('n', 'lz', vim.cmd.q )
map.set('n', '<C-s>', vim.cmd.w )
map.set('v','J',":m '>+1<CR>gv=gv")
map.set('v','K',":m '<-2<CR>gv=gv")
map.set("n","<bs>", "^")
map.set("n","<esc><esc>", ":nohlsearch<cr>")
map.set("n","<bs>", "^")
-- Copy to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y<esc>')
-- Insert mode shortcuts
vim.keymap.set("i", "<c-h>", "<c-g><esc><S-i>")
vim.keymap.set("i", "<c-;>", "<c-g><esc><s-a>;")
vim.keymap.set("i", "<c-o>", "<c-g><esc>la")

map.set("n", "<c-h>","<c-w>h")
map.set("n", "<c-j>","<c-w>j")
map.set("n", "<c-k>","<c-w>k")
map.set("n", "<c-l>","<c-w>l")
