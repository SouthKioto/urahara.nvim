local M = {}

function M.setup()
	vim.g.colors_name = "urahara"

	local hl = vim.api.nvim_set_hl

	local colors = {

		bg = "#0e100c",
		bg_alt = "#121510",
		gray_dark = "#1a1d18",
		gray_dim = "#4a4f44",
		near_black = "#22211f",
		green_faint = "#3a4d30",
		green_dark = "#323e29",
		green_mid = "#586d4a",
		green_bright = "#6d8a57",
		green_soft = "#7a9e68",
		green_vivid = "#92bf7a",
		cream = "#eeede8",
		parchment = "#e7e3ca",
		fg_dim = "#c8c5be",
		fg_muted = "#9a9790",
		fg_faint = "#6e6c67",
		tan = "#b5a97a",
		moss = "#4e6b3c",
		visual_bg = "#1e2b19",
	}
	hl(0, "Normal", { fg = colors.cream, bg = colors.bg })
	hl(0, "NormalFloat", { fg = colors.cream, bg = colors.bg_alt })
	hl(0, "Comment", { fg = "#c8c5be", italic = true })
	hl(0, "CursorLine", { bg = colors.gray_dark })
	hl(0, "LineNr", { fg = colors.gray_dim })
	hl(0, "CursorLineNr", { fg = colors.green_bright, bold = true })
	hl(0, "SignColumn", { bg = "NONE" })
	hl(0, "WinSeparator", { fg = colors.green_dark })
	hl(0, "EndOfBuffer", { fg = colors.green_faint })
	hl(0, "ColorColumn", { bg = "#161a13" })
	hl(0, "MatchParen", { fg = colors.green_vivid, bold = true, underline = true })
	hl(0, "Keyword", { fg = colors.green_mid, bold = true })
	hl(0, "Statement", { fg = colors.green_mid, bold = true })
	hl(0, "String", { fg = "#dddbd6" })
	hl(0, "Function", { fg = colors.cream, bold = true })
	hl(0, "Identifier", { fg = colors.fg_dim })
	hl(0, "Operator", { fg = colors.green_vivid })
	hl(0, "Type", { fg = colors.tan, bold = true })
	hl(0, "Delimiter", { fg = colors.moss })
	hl(0, "Constant", { fg = colors.parchment })
	hl(0, "Number", { fg = "#8faa78" })
	hl(0, "Boolean", { fg = colors.green_bright, bold = true })
	hl(0, "Special", { fg = "#6e9458" })
	hl(0, "PreProc", { fg = colors.green_faint })
	hl(0, "@lsp.type.class", { link = "Type" })
	hl(0, "@lsp.type.function", { link = "Function" })
	hl(0, "@lsp.type.method", { link = "Function" })
	hl(0, "@lsp.type.variable", { link = "@variable" })
	hl(0, "@lsp.type.parameter", { link = "@variable.parameter" })
	hl(0, "@punctuation.bracket", { fg = colors.fg_faint })
	hl(0, "@punctuation.delimiter", { fg = colors.moss })
	hl(0, "@constructor", { fg = colors.green_bright })
	hl(0, "@variable", { fg = colors.fg_dim })
	hl(0, "@variable.builtin", { fg = colors.green_soft, italic = true })
	hl(0, "@variable.parameter", { fg = colors.fg_muted, italic = true })
	hl(0, "@property", { fg = colors.fg_muted })
	hl(0, "@field", { fg = colors.fg_muted })
	hl(0, "@namespace", { fg = colors.tan })
	hl(0, "@keyword.operator", { fg = colors.green_vivid })
	hl(0, "@keyword.return", { fg = colors.green_vivid, bold = true, underline = true })
	hl(0, "@tag", { fg = colors.green_mid })
	hl(0, "@tag.attribute", { fg = colors.fg_muted, italic = true })
	hl(0, "@tag.delimiter", { fg = colors.green_dark })
	hl(0, "@string.escape", { fg = colors.tan })
	hl(0, "@string.special", { fg = colors.tan })
	hl(0, "NeoTreeNormal", { fg = colors.fg_dim, bg = "NONE" })
	hl(0, "NeoTreeNormalNC", { fg = colors.fg_dim, bg = "NONE" })
	hl(0, "NeoTreeWinSeparator", { fg = colors.green_dark })
	hl(0, "NeoTreeRootName", { fg = colors.green_bright, bold = true })
	hl(0, "NeoTreeDirectoryIcon", { fg = colors.green_mid })
	hl(0, "NeoTreeFileName", { fg = colors.fg_dim })
	hl(0, "NeoTreeModified", { fg = colors.tan })
	hl(0, "TelescopeBorder", { fg = colors.green_mid })
	hl(0, "TelescopePromptBorder", { fg = colors.green_bright })
	hl(0, "TelescopeSelection", { bg = colors.visual_bg, fg = colors.cream })
	hl(0, "TelescopeMatching", { fg = colors.green_vivid, bold = true })
	hl(0, "Visual", { bg = colors.visual_bg })
	hl(0, "Search", { fg = colors.near_black, bg = colors.green_mid })
	hl(0, "IncSearch", { fg = colors.near_black, bg = colors.green_vivid })
	hl(0, "FloatBorder", { fg = colors.green_bright, bg = "NONE" })
	hl(0, "Pmenu", { fg = colors.fg_dim, bg = "#141810" })
	hl(0, "PmenuSel", { fg = colors.cream, bg = colors.green_dark })
	hl(0, "PmenuSbar", { bg = colors.gray_dark })
	hl(0, "PmenuThumb", { bg = colors.green_dark })
	hl(0, "StatusLine", { fg = colors.fg_dim, bg = colors.near_black })
	hl(0, "StatusLineNC", { fg = colors.gray_dim, bg = colors.near_black })
	hl(0, "LazyNormal", { bg = "NONE", fg = colors.cream })
	hl(0, "LazyBorder", { fg = colors.green_mid, bg = "NONE" })
	hl(0, "DiagnosticError", { fg = "#c97a5e" })
	hl(0, "DiagnosticWarn", { fg = colors.tan })
	hl(0, "DiagnosticInfo", { fg = colors.green_soft })
	hl(0, "DiagnosticHint", { fg = colors.green_mid })
	hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = "#c97a5e" })
	hl(0, "GitSignsAdd", { fg = colors.green_mid })
	hl(0, "GitSignsChange", { fg = colors.tan })
	hl(0, "GitSignsDelete", { fg = "#8a5040" })
end
M.colors = {
	bg = "#0e100c",
	bg_alt = "#121510",
	near_black = "#22211f",
	green_dark = "#323e29",
	green_mid = "#586d4a",
	green_bright = "#6d8a57",
	green_vivid = "#92bf7a",
	cream = "#eeede8",
	parchment = "#e7e3ca",
	tan = "#b5a97a",
	fg_dim = "#c8c5be",
	fg_muted = "#9a9790",
	visual_bg = "#1e2b19",
}

return M
