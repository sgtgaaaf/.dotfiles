return {
   'akinsho/toggleterm.nvim',
   version = "*",
   config = function()
      local term = require("toggleterm")
      term.setup({
         open_mapping = [[<c-\>]],
         persist_size = true,
         persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
         direction = 'float',
         float_opts = {
            border = "curved",
         },
         winbar = {
            enable = true,
            name_formatter = function(term)
               return term.name
            end
         },
      })
   end
}

