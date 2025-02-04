-- Minimal configuration
return {
    "David-Kunz/gen.nvim",
    config = function()
        require('gen').setup({
            host = "localhost", -- The host running the Ollama service.
            port = "11434",    -- The port on which the Ollama service is listening.
            model = "deepseek-r1:14b", -- The default model to use.
        })
        vim.keymap.set({ 'n', 'v' }, '<leader>]', ':Gen<CR>')
    end
}
