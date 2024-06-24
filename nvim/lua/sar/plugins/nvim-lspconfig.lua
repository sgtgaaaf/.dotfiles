return {
   "neovim/nvim-lspconfig",
   dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "stevearc/conform.nvim",
   },
   config = function()
      -- MASON
      require("mason").setup()

      -- MASON-LSPCONGIF
      require("lspconfig").lua_ls.setup({})

      -- FORMATTER
      require("conform").setup({
         formatter_by_ft = {
            lua = { "stylua" },
            java = { "prettier" },
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
