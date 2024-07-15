-- Highlight entire line for errors
-- Highlight the line number for warnings
vim.diagnostic.config({
    virtual_text = not vim.diagnostic.config().virtual_text
})

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '',
            [vim.diagnostic.severity.INFO] = '',
        },
        -- linehl = {
        --    [vim.diagnostic.severity.ERROR] = 'ErrorMsg',
        -- },
        -- virtual_text = {
        --    prefix = ' ●', -- Could be '●', '▎', 'x'
        --    underline = false,
        -- },
        float = {
            border = "rounded",
            source = "always",
        },
        numhl = {
            [vim.diagnostic.severity.ERROR] = 'errormsg',
            [vim.diagnostic.severity.WARN] = 'warningmsg',
            [vim.diagnostic.severity.HINT] = 'spellrare',
            [vim.diagnostic.severity.INFO] = 'type',
        },
    },
})

vim.keymap.set('n', '<leader>u',
    function()
        vim.diagnostic.config({
            virtual_text = not vim.diagnostic.config().virtual_text
        })
    end
)
-- vim.cmd([[ command! VirtualTextToggle lua Virtual_text_toggle()]])
-- vim.map.set('n', '<leader>u',  ':VirtualTextToggle<CR>')
