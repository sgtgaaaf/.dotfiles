return {
   "nvim-treesitter/nvim-treesitter",
   config = function()
      local status ,ts = pcall(require,"nvim-treesitter.configs") 
      if not status then
         return
      end
      ts.setup({
         ensure_installed = { "java",  "javascript", "typescript", "c", "vim", "lua", "markdown", "toml", "json", "xml", "html" },
         
         auto_install = true,
         highlight = {
            enable = true
         },
         context_commentstring = {
            enable = true,
            enable_autocmd = false,
         },
         rainbow = {
            enable = true,
            disable = { "html" },
            extended_mode = false,
            max_file_lines = nil,
         },
         autotag = { enable = true },
         incremental_selection = { enable = true },
         indent = { enable = true },
      })
   end
}
