return {
   "kevinhwang91/nvim-ufo",
   dependencies = {
      "kevinhwang91/promise-async",
   },
   config = function()
      vim.o.foldcolumn = '1' -- '0' is not bad
      vim.o.foldlevel = 99   -- Using ufo provider need a large value, feel free to decrease the value
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      -- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
      vim.keymap.set('n', 'fo', require('ufo').openAllFolds)
      vim.keymap.set('n', 'fi', require('ufo').closeAllFolds)
      vim.keymap.set('n', 'fO', require('ufo').openFoldsExceptKinds)
      vim.keymap.set('n', 'fI', require('ufo').closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
      vim.keymap.set('n', 'K', function()
         local winid = require('ufo').peekFoldedLinesUnderCursor()
         if not winid then
            -- choose one of coc.nvim and nvim lsp
            vim.fn.CocActionAsync('definitionHover') -- coc.nvim
            vim.lsp.buf.hover()
         end
      end)

      -- Option 2: nvim lsp as LSP client
      -- Tell the server the capability of foldingRange,
      -- Neovim hasn't added foldingRange to default capabilities, users must add it manually
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.foldingRange = { dynamicRegistration = false,
         lineFoldingOnly = true
      }
      local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
      for _, ls in ipairs(language_servers) do
         require('lspconfig')[ls].setup({
            capabilities = capabilities
            -- you can add other fields for setting up lsp server in this table
         })
      end
      require('ufo').setup()
   end
}
