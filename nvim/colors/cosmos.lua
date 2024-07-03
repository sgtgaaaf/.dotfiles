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
-- sar/core/init.lua#41A1C0
-- Set the color for strings
vim.api.nvim_set_hl(0, "@type.definition", { fg = "#Ffffff", bold = true })
vim.api.nvim_set_hl(0, "@lsp.function.method.call", { fg = "#67b7a4" })
vim.api.nvim_set_hl(0, "@property", { fg = "#41a1c0", bold = true })
vim.api.nvim_set_hl(0, "@type.name", { fg = "#0000ff", bold = true })
-- Set the keyword color
vim.api.nvim_set_hl(0, "Keyword", { fg = "#FC5fA3", bold = true })
-- Set the highlight for static fields
vim.api.nvim_set_hl(0, "StaticField", { fg = "#A167E6", italic = true })
-- Set the selection colors for normal mode
vim.api.nvim_set_hl(0, "Visual", { fg = "NONE", bg = "#515B70" })
-- Set the selection colors for visual mode
vim.api.nvim_set_hl(0, "VisualNOS", { fg = "NONE", bg = "#BBC2CF" })
-- Set the selection colors for insert mode
vim.api.nvim_set_hl(0, "VisualNOS", { fg = "NONE", bg = "#4CAF50" })
-- experimental
-- $VIMRUNTIME/syntax/java.vim

vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#FC5fA3", bold = true })
vim.api.nvim_set_hl(0, "@function", { fg = "#41a1c0" })
vim.api.nvim_set_hl(0, "@type", { fg = "#FC5fA3", bold = true })
vim.api.nvim_command("hi clear")


vim.api.nvim_set_hl(0, "Normal", { bg = "#292A2F", fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#7487CE' })
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#73797E' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#73797E' })
vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = '#292A2F' })

-- following doc syntax.txt line 204
vim.api.nvim_set_hl(0, "Comment", { fg = "#6c7986" })

vim.api.nvim_set_hl(0, "Constant", { fg = "#A167E6" })
vim.api.nvim_set_hl(0, "String", { fg = "#FC6A5D" })
vim.api.nvim_set_hl(0, "Character", { fg = "#9ef1dd" })
vim.api.nvim_set_hl(0, "Number", { fg = "#D0BF69" })
vim.api.nvim_set_hl(0, "Boolean", { fg = "#FC5fA3", bold = true })
vim.api.nvim_set_hl(0, "Float", { fg = "#D0BF69" })

vim.api.nvim_set_hl(0, "Identifier", { fg = "#41a1c0" })
vim.api.nvim_set_hl(0, "Function", { fg = "#41a1c0" })

vim.api.nvim_set_hl(0, "Statement", { fg = "#FC5fA3", bold = true })
vim.api.nvim_set_hl(0, "Operator", { fg = "#FFFFFF", bold = true })

vim.api.nvim_set_hl(0, "Type", { fg = "#5DD8FF", bold = true })
vim.api.nvim_set_hl(0, "Typedef", { fg = "#5DD8FF", bold = true })

-- from java.vim in syntax
-- vim.api.nvim_set_hl(0, "javaScopeDecl", { fg = "#FF0000", bold = true })
-- vim.api.nvim_set_hl(0, "javaAnnotation", { fg = "#FC0000", bold = true })
-- vim.api.nvim_set_hl(0, "javaMethodDecl", { fg = "#FC5fA3", bold = true })
-- vim.api.nvim_set_hl(0, "javaClassDecl", { fg = "#ff0000", bold = true })

-- good above
