return {
   "neovim/nvim-lspconfig",
   dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
   },
   config = function()
      -- MASON
      require("mason").setup()
      require("mason-lspconfig").setup()

      -- MASON-LSPCONGIF
      require("lspconfig").lua_ls.setup({})
   end,
}

