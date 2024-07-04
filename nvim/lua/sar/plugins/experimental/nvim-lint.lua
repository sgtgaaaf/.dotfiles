return {
   "mfussenegger/nvim-lint",
   config = function()
      require("lint").linters_by_ft = {
         java = { "sonarlint_language_server", },
      }
   end
}
