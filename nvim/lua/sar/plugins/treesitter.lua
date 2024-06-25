return {
   "nvim-treesitter/nvim-treesitter",
   config = function()
      require("nvim-treesitter.configs").setup({
         ensure_installed = { "java", "typescript", "c", "vim",},
         auto_install = true,
         highlight = {
            enable = true
         }
      })
   end
}
