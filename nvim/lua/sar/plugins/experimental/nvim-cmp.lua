return {
   "hrsh7th/nvim-cmp",
   dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
   },
   config = function()
      local cmp = require("cmp")
      cmp.setup({
         snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
               require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
               -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
            end,
         },
         window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
         },
         cmp.setup({
            mapping = cmp.mapping.preset.insert {
               ["<C-b>"] = cmp.mapping.scroll_docs(-4),
               ["<C-f>"] = cmp.mapping.scroll_docs(4),
               ['<Tab>'] = cmp.mapping.confirm { select = true },
               ['<Down>'] = cmp.mapping.select_next_item(),
               ['<Up>'] = cmp.mapping.select_prev_item(),
               ['<C-Space>'] = cmp.mapping.complete {},
               ["<C-e>"] = cmp.mapping.abort(),
               ['<C-l>'] = cmp.mapping(function()
                  if luasnip.expand_or_locally_jumpable() then
                     luasnip.expand_or_jump()
                  end
               end, { 'i', 's' }),
               ['<C-h>'] = cmp.mapping(function()
                  if luasnip.locally_jumpable(-1) then
                     luasnip.jump(-1)
                  end
               end, { 'i', 's' }),

            },
         }),
         --       ["<Tab>"] = cmp.mapping(function(fallback)
         --          -- This little snippet will confirm with tab, and if no entry is selected, will confirm the first item
         --          if cmp.visible() then
         --             local entry = cmp.get_selected_entry()
         --             if not entry then
         --                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
         --             end
         --             cmp.confirm()
         --          else
         --             fallback()
         --          end
         --       end, { "i", "s", "c", }),
         -- }),
         sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "luasnip" }, -- For luasnip users.
         }, {
            { name = "buffer" },
            { name = "path" },
            { name = "cmdline" },
         })
      })
      -- To use git you need to install the plugin petertriho/cmp-git and uncomment lines below
      -- Set configuration for specific filetype.
      --[[ cmp.setup.filetype("gitcommit", {
         sources = cmp.config.sources({
            { name = "git" },
         }, {
            { name = "buffer" },
         })
      })
      require("cmp_git").setup() ]] --

      -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won"t work anymore).
      cmp.setup.cmdline({ "/", "?" }, {
         mapping = cmp.mapping.preset.cmdline(),
         sources = {
            { name = "buffer" }
         }
      })

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(':', {
         mapping = cmp.mapping.preset.cmdline(),
         sources = cmp.config.sources({
            { name = "path" }
         }, {
            { name = "cmdline" }
         }),
         matching = { disallow_symbol_nonprefix_matching = false }
      })

      -- Set up lspconfig.
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
      require("lspconfig")["lua_ls"].setup({
         capabilities = capabilities
      })
      require("lspconfig")["tsserver"].setup({
         capabilities = capabilities
      })
   end
}
