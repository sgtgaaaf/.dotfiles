-- class
-- initialised class
-- interface
-- enum
-- keywords
-- text
-- declared Variable
-- package path
-- number
-- String
-- boolean
--
-- Set the color for strings
vim.api.nvim_command("hi clear")
vim.api.nvim_set_hl(0, "Normal", { bg = "#292A2F", fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "@string", { fg = "#FC6A5D" })
vim.api.nvim_set_hl(0, "@boolean", { fg = "#FC5fA3", bold = true})
vim.api.nvim_set_hl(0, "@number", { fg = "#D0BF69" })
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#7487CE' })
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#73797E' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#73797E' })
-- Set the keyword color
vim.api.nvim_set_hl(0, "Keyword", { fg = "#FC5fA3", bold = true})
-- Set the highlight for static fields
vim.api.nvim_set_hl(0, "StaticField", { fg = "#A167E6", italic = true })
-- Set the selection colors for normal mode
vim.api.nvim_set_hl(0, "Visual", { fg = "NONE", bg = "#515B70" })
-- Set the selection colors for visual mode
vim.api.nvim_set_hl(0, "VisualNOS", { fg = "NONE", bg = "#BBC2CF" })
-- Set the selection colors for insert mode
vim.api.nvim_set_hl(0, "VisualNOS", { fg = "NONE", bg = "#4CAF50" })
