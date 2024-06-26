-- template : vim.keymap.set("mode", "new key", "desired-function", { desc = " for the whichkey "})
-- template-blank : vim.keymap.set("n", "", "<>", { desc = "  "})
--
vim.g.mapleader = " "
local map = vim.keymap

-- custom keymaps

map.set("i", "jk", "<esc>", { desc = "Exit insert mode with jk" })
map.set("v", "jkl", "<esc>", { desc = "esc with jkl" })

map.set("v", "J", ":m '>+1<cr>gv=gv", { desc = "  " })
map.set("v", "K", ":m '<-2<cr>gv=gv", { desc = "  " })

map.set("i", "<c-o>", "<esc>la", { desc = "" })
map.set("i", "<c-;>", "<esc><s-a>;", { desc = "" })
map.set("i", "<c-h>", "<esc><s-i>", { desc = "" })

map.set("n", "<leader>z", "ciwfalse<esc>")
map.set("n", "<leader>o", "ciwtrue<esc>")
