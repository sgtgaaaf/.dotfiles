return { -- https://www.github.com/lukas-reineke/indent-blankline.nvim
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    main = "ibl",
    opts = {
        indent = { char = "▏" },
        scope = { char = "▏", show_start = false, show_end = false },
    },
}
