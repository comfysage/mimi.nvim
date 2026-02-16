-- name:    mimi
-- author:  comfysage
-- license: eupl-1.2

-- palette ====================================================================
local palette = {
	bg_edge2 = "#120D08",
	bg_edge = "#1C1207",
	bg = "#1C1712",
	bg_mid = "#33200D",
	bg_mid2 = "#4D4035",
	fg_edge2 = "#F8ECE1",
	fg_edge = "#EACFB7",
	fg = "#F0DBC7",
	fg_mid = "#B6987D",
	fg_mid2 = "#8F735B",

	accent = "#AD496C",

	red = "#AF4C58",
	orange = "#B87058",
	yellow = "#CFA06B",
	green = "#A6C99F",
	cyan = "#A1CFB7",
	azure = "#95C2BC",
	blue = "#A4B7C9",
	purple = "#CE8C98",
}

require("mini.hues").apply_palette(palette)

-- syntax =====================================================================
vim.api.nvim_set_hl(0, "String", { fg = palette.yellow })
vim.api.nvim_set_hl(0, "Identifier", { fg = palette.fg_edge })
vim.api.nvim_set_hl(0, "Statement", { fg = palette.fg_mid })
vim.api.nvim_set_hl(0, "Delimiter", { fg = palette.fg_mid2 })
vim.api.nvim_set_hl(0, "Operator", { fg = palette.fg_mid2 })

vim.api.nvim_set_hl(0, "@markup.link.url", { fg = palette.blue, underline = true })

-- ui =========================================================================
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = palette.fg_mid2 })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = palette.fg_mid })

vim.api.nvim_set_hl(0, "TabLine", { fg = palette.fg_mid, bg = palette.bg_mid })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = palette.bg_edge, bg = palette.accent })
vim.api.nvim_set_hl(0, "TabLineFill", { fg = palette.fg, bg = palette.bg_edge })

vim.api.nvim_set_hl(0, "Pmenu", { fg = palette.fg, bg = palette.bg_edge })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = palette.fg, bg = palette.bg_mid, bold = true })
vim.api.nvim_set_hl(0, "PmenuMatch", { fg = palette.accent })
vim.api.nvim_set_hl(0, "PmenuMatchSel", {})

-- misc =======================================================================
vim.api.nvim_set_hl(0, "Directory", { fg = palette.orange })

-- language specific ==========================================================
-- lua
vim.api.nvim_set_hl(0, "@constructor.lua", { link = "@punctuation.bracket" })

vim.g.colors_name = "mimi"
