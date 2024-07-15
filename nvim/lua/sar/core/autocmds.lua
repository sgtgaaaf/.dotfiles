-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        client.server_capabilities.semanticTokensProvider = nil
    end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function()
        require("lint").try_lint()
    end,
})

-- this one I got from a r/neovim | it is commented out because it broke and I have not looked for a fix
-- vim.api.nvim_create_autocmd("LspRequest", {
--     callback = function(args)
--         local bufnr = args.buf
--         local client_id = args.data.client_id
--         local request_id = args.data.request_id
--         local request = args.data.request
--         if request.type == "pending" then
--             track_pending(client_id, bufnr, request_id, request)
--         elseif request.type == "cancel" then
--             track_canceling(client_id, bufnr, request_id, request)
--         elseif request.type == "complete" then
--             track_finish(client_id, bufnr, request_id, request)
--         end
--     end
-- })
