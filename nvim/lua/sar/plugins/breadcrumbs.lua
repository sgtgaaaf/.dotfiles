return { -- https://www.github.com/SmiteshP/nvim-navic
   "SmiteshP/nvim-navic",
   config = function()
      require("nvim-navic").setup({
         highlight = false,
         lsp = {
            auto_attach = true,
            preference = { "typescript-tools" },
         },
         click = true,
         separator = " › ",
         depth_limit = 0,
         depth_limit_indicator = "..",
         icons = {
            File          = "󰈙 ",
            Module        = " ",
            Namespace     = "󰌗 ",
            Package       = " ",
            Class         = "󰌗 ",
            Method        = "󰆧 ",
            Property      = " ",
            Field         = " ",
            Constructor   = " ",
            Enum          = "󰕘",
            Interface     = "󰕘",
            Function      = "󰊕 ",
            Variable      = "󰆧 ",
            Constant      = "󰏿 ",
            String        = "󰀬 ",
            Number        = "󰎠 ",
            Boolean       = "◩ ",
            Array         = "󰅪 ",
            Object        = "󰅩 ",
            Key           = "󰌋 ",
            Null          = "󰟢 ",
            EnumMember    = " ",
            Struct        = "󰌗 ",
            Event         = " ",
            Operator      = "󰆕 ",
            TypeParameter = "󰊄 ",
         },
      })
   end
}
