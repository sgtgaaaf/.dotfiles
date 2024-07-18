return { -- https://www.github.com/neovim/nvim-lspconfig
   "neovim/nvim-lspconfig",
   dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "mfussenegger/nvim-jdtls",
      "folke/neodev.nvim",
   },
   config = function()
      -- MASON
      require("mason").setup()
      -- MASON-LSPCONFIG
      require("mason-lspconfig").setup({
         ensure_installed = {
            "tsserver",
            "lua_ls",
            "jdtls",
         },
      })

      require("neodev").setup({})
      require("lspconfig").lua_ls.setup({})
      require("lspconfig").tsserver.setup({})
      require("lspconfig").clangd.setup({})
      require("lspconfig").jsonls.setup({})
      -- require("lspconfig").sonarlint.setup({})

      local map = vim.keymap
      -- Jump to the definition of the word under your cursor.
      --  This is where a variable was first declared, or where a function is defined, etc.
      --  To jump back, press <C-t>.
      map.set("n", 'gd', require('telescope.builtin').lsp_definitions)

      -- Find references for the word under your cursor.
      map.set("n", 'gr', require('telescope.builtin').lsp_references)

      -- Jump to the implementation of the word under your cursor.
      --  Useful when your language has ways of declaring types without an actual implementation.
      map.set("n", 'gI', require('telescope.builtin').lsp_implementations)

      -- Jump to the type of the word under your cursor.
      --  Useful when you're not sure what type a variable is and you want to see
      --  the definition of its *type*, not where it was *defined*.
      map.set("n", '<leader>D', require('telescope.builtin').lsp_type_definitions)

      -- Fuzzy find all the symbols in your current document.
      --  Symbols are things like variables, functions, types, etc.
      map.set("n", '<leader>ds', require('telescope.builtin').lsp_document_symbols)

      -- Fuzzy find all the symbols in your current workspace.
      --  Similar to document symbols, except searches over your entire project.
      map.set("n", '<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols)

      -- Rename the variable under your cursor.
      --  Most Language Servers support renaming across files, etc.
      map.set("n", '<leader>rn', vim.lsp.buf.rename)

      -- Execute a code action, usually your cursor needs to be on top of an error
      -- or a suggestion from your LSP for this to activate.
      map.set("n", '<leader>ca', vim.lsp.buf.code_action)

      -- Opens a pop-up that displays documentation about the word under your cursor
      --  See `:help K` for why this keymap.set.
      map.set("n", 'K', vim.lsp.buf.hover)

      -- WARN: This is not Goto Definition, this is Goto Declaration.
      --  For example, in C this would take you to the header.
      map.set("n", 'gD', vim.lsp.buf.declaration)
   end,
}
