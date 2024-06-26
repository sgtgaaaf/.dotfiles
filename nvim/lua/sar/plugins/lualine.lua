return {
   "nvim-lualine/lualine.nvim",
   dependencies = {
      "nvim-tree/nvim-web-devicons",
   },
   config = function()
      require("lualine").setup({
         options = {
            theme = "material",
            icons_enabled = true,
            component_separators = { left = " ", right = " " },
            section_separators = { left = " ", right = " " },
            disabled_filetypes = {
               statusline = {},
               winbar = {},
            },
         },
         sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {
               {
                  "filename",
                  path = 1,
               },
               {
                  function()
                     return require("nvim-navic").get_location()
                  end,
                  cond = function()
                     return require("nvim-navic").is_available()
                  end,
               },
            },
            lualine_x = { 'location', 'encoding',
               {
                  'filetype',
                  icon_only = true,
               }
            },
            lualine_y = {
               {
                  'fileformat',
                  symbols = {
                     unix = '', -- e712
                     dos = '', -- e70f
                     mac = '', -- e711
                  },
               },
            },
            lualine_z = { 'mode' },
         },
         inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename' },
            lualine_x = { 'location' },
            lualine_y = {},
            lualine_z = {}
         },
         winbar = {
            lualine_a = {},
            lualine_b = {
               {
                  'filetype',
                  icon_only = true,
               },
               'filename',
               {
                  "branch",
                  icons_enabled = false,
               },
               "diff",
            },
            lualine_c = {},
            lualine_x = { "diagnostics" },
            lualine_y = {},
            lualine_z = {},
         },
         inactive_winbar = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { 'filename' },
            lualine_x = {},
            lualine_y = {},
            lualine_z = {}
         },
         tabline = {},
         extensions = {}
      })
   end,
}
