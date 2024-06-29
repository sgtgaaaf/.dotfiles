return {
   "nvim-lualine/lualine.nvim",
   dependencies = { "nvim-tree/nvim-web-devicons" },
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
                  -- fmt = function(str) return str:sub("\" ," > ") end
                  -- fmt = function(str) return str:sub("/" ," > ") end
               },
            },
            lualine_x = { 'location', 'encoding', {
               'fileformat',
               symbols = {
                  unix = '', -- e712
                  dos = '', -- e70f
                  mac = '', -- e711
               }
            }, },
            lualine_y = {
               {
                  'filetype',
                  icon_only = true,
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
            },
            lualine_c = {},
            lualine_x = {},
            lualine_y = { "branch", "diff", "diagnostics" },
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
