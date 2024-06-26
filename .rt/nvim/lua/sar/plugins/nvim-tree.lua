return {
   "nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",

config = function()

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

local tree = require("nvim-tree")
tree.setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
     centralize_selection = true,
    width = 30,
    number = true,
    relativenumber = true,
    float = {
          enable = false,
          quit_on_focus_loss = true,
          open_win_config = {
            relative = "editor",
            border = "rounded",
            width = 90,
            height = 40,
            row = 1,
            col = 1,
          },
       }
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
-- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
    keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
end
}
