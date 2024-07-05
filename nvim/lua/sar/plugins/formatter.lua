return {
   "stevearc/conform.nvim",
   config = function()
      require("conform").setup({
         formatter_by_ft = {
            lua = { "stylua" },
            java = { "prettier" },
            ts = { "prettier" },
            xml = { "xmlformatter" },
            md = { "markdownlint" },
         },
      })
      vim.keymap.set("n", "<leader>mp", function()
         require("conform").format({
            lsp_fallback = true,
            async = false,
            timeout_ms = 1000,
         })
      end)
   end,
}
