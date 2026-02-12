local M = {}

function M.setup()
	vim.g.colors_name = "urahara"

	local hl = vim.api.nvim_set_hl

	local colors = {
		bg = "#0e100c",
		fg = "#eeede8",
		green_bright = "#6d8a57",
		green_mid = "#586d4a",
		green_dark = "#323e29",
		green_soft = "#7a9e68",
		cream = "#eeede8",
		parchment = "#e7e3ca",
		near_black = "#22211f",
		gray_dim = "#4a4f44",
		gray_dark = "#1a1d18",
		visual_bg = "#1e2b19",
	}

	-- Base
	hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
	hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg })
	hl(0, "Comment", { fg = "#555a4e", italic = true })
	hl(0, "CursorLine", { bg = colors.gray_dark })
	hl(0, "LineNr", { fg = colors.gray_dim })
	hl(0, "CursorLineNr", { fg = colors.green_bright, bold = true })
	hl(0, "SignColumn", { bg = "NONE" })
	hl(0, "WinSeparator", { fg = colors.green_dark })

	-- Syntax
	hl(0, "Keyword", { fg = colors.green_bright, bold = true })
	hl(0, "Statement", { fg = colors.green_bright, bold = true })
	hl(0, "String", { fg = colors.green_soft })
	hl(0, "Function", { fg = colors.cream, bold = true })
	hl(0, "Identifier", { fg = "#dddbd6" })
	hl(0, "Operator", { fg = "#7aab62" })
	hl(0, "Type", { fg = colors.green_mid, bold = true })
	hl(0, "Delimiter", { fg = "#4e6b3c" })
	hl(0, "Constant", { fg = colors.parchment })
	hl(0, "Number", { fg = "#8a9e78" })
	hl(0, "Boolean", { fg = colors.green_bright, bold = true })
	hl(0, "Special", { fg = "#658052" })
	hl(0, "PreProc", { fg = "#3d5430" })

	-- LSP
	hl(0, "@lsp.type.class", { link = "Type" })
	hl(0, "@lsp.type.function", { link = "Function" })
	hl(0, "@lsp.type.method", { link = "Function" })
	hl(0, "@lsp.type.variable", { link = "@variable" })
	hl(0, "@lsp.type.parameter", { link = "@variable.parameter" })

	-- Treesitter
	hl(0, "@punctuation.bracket", { fg = "#5a6654" })
	hl(0, "@constructor", { fg = colors.green_bright })
	hl(0, "@variable", { fg = "#c8c5be" })
	hl(0, "@variable.builtin", { fg = colors.green_soft, italic = true })
	hl(0, "@variable.parameter", { fg = "#8a8880", italic = true })
	hl(0, "@property", { fg = "#b8b4ac" })
	hl(0, "@keyword.operator", { fg = colors.green_bright })
	hl(0, "@keyword.return", { fg = colors.green_bright, bold = true, underline = true })
	hl(0, "@tag", { fg = colors.green_bright })
	hl(0, "@tag.attribute", { fg = "#8a8880", italic = true })
	hl(0, "@tag.delimiter", { fg = colors.green_dark })

	-- NeoTree
	hl(0, "NeoTreeNormal", { fg = "#c8c5be", bg = "NONE" })
	hl(0, "NeoTreeNormalNC", { fg = "#c8c5be", bg = "NONE" })
	hl(0, "NeoTreeWinSeparator", { fg = colors.green_dark })
	hl(0, "NeoTreeRootName", { fg = colors.green_bright, bold = true })
	hl(0, "NeoTreeDirectoryIcon", { fg = colors.green_mid })

	-- Telescope
	hl(0, "TelescopeBorder", { fg = colors.green_mid })
	hl(0, "TelescopePromptBorder", { fg = colors.green_bright })
	hl(0, "TelescopeSelection", { bg = colors.visual_bg, fg = colors.cream })

	-- UI
	hl(0, "Visual", { bg = colors.visual_bg })
	hl(0, "Search", { fg = colors.near_black, bg = colors.green_mid })
	hl(0, "FloatBorder", { fg = colors.green_bright, bg = "NONE" })

	-- Lazy
	hl(0, "LazyNormal", { bg = "NONE", fg = colors.fg })
	hl(0, "LazyBorder", { fg = colors.green_mid, bg = "NONE" })
end

return M
