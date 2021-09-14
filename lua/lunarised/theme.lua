local lunarised = require('lunarised.colours')

local theme = {
	base = {
		Boolean = { fg = lunarised.green },
		Character = { fg = lunarised.orange },
		Conditional = { fg = lunarised.green },
		Constant = { fg = lunarised.purple },
		Debug = { fg = lunarised.red },
		Define = { fg = lunarised.blue },
		Delimiter = { fg = lunarised.red },
		Error = { fg = lunarised.error, bg = lunarised.none, style = 'bold,underline' },
		Exception = { fg = lunarised.red },
		Float = { fg = lunarised.orange },
		Function = { fg = lunarised.blue },
		Identifier = { fg = lunarised.purple },
		Ignore = { fg = lunarised.disabled },
		Include = { fg = lunarised.red },
		Keyword = { fg = lunarised.yellow },
		Label = { fg = lunarised.purple },
		Macro = { fg = lunarised.green },
		Normal = { fg = lunarised.text, bg = lunarised.bg },
		Number = { fg = lunarised.orange },
		Operator = { fg = lunarised.purple },
		PreCondit = { fg = lunarised.cyan },
		PreProc = { fg = lunarised.yellow },
		Repeat = { fg = lunarised.green },
		Special = { fg = lunarised.text },
		SpecialChar = { fg = lunarised.purple },
		SpecialComment = { fg = lunarised.grey },
		Statement = { fg = lunarised.blue },
		StorageClass = { fg = lunarised.cyan },
		String = { fg = lunarised.cyan, bg = lunarised.none },
		Structure = { fg = lunarised.puple },
		Tag = { fg = lunarised.red },
		Todo = { fg = lunarised.purple, bg = lunarised.none, style = 'bold' },
		Type = { fg = lunarised.yellow },
		Typedef = { fg = lunarised.red },
		Underlined = { fg = lunarised.link, bg = lunarised.none, style = 'underline' },
		ColorColumn = { fg = lunarised.none, bg = lunarised.bg_alt },
		CommandMode = { fg = lunarised.grey, bg = lunarised.none, style = 'reverse' },
		Conceal = { fg = lunarised.disabled },
		Cursor = { fg = lunarised.cursor, bg = lunarised.none, style = 'reverse' },
		CursorColumn = { fg = lunarised.none, bg = lunarised.active },
		CursorIM = { fg = lunarised.cursor, bg = lunarised.none, style = 'reverse' },
		CursorLine = { fg = lunarised.none, bg = lunarised.bg_alt },
		CursorLineNr = { fg = lunarised.accent },
		DiffAdd = { fg = lunarised.green, bg = lunarised.none, style = 'reverse' },
		DiffChange = { fg = lunarised.orange, bg = lunarised.none, style = 'reverse' },
		DiffDelete = { fg = lunarised.red, bg = lunarised.none, style = 'reverse' },
		DiffText = { fg = lunarised.purple, bg = lunarised.none, style = 'reverse' },
		Directory = { fg = lunarised.blue, bg = lunarised.none },
		EndOfBuffer = { fg = lunarised.bg },
		ErrorMsg = { fg = lunarised.none },
		FoldColumn = { fg = lunarised.blue },
		Folded = { fg = lunarised.disabled, bg = lunarised.none, style = 'italic' },
		IncSearch = { fg = lunarised.highlight, bg = lunarised.white, style = 'reverse' },
		InsertMode = { fg = lunarised.green, bg = lunarised.none, style = 'reverse' },
		LineNr = { fg = lunarised.line_numbers },
		MatchParen = { fg = lunarised.purple, bg = lunarised.none, style = 'bold' },
		ModeMsg = { fg = lunarised.accent },
		MoreMsg = { fg = lunarised.accent },
		NonText = { fg = lunarised.disabled },
		NormalFloat = { fg = lunarised.fg, bg = lunarised.float },
		NormalMode = { fg = lunarised.accent, bg = lunarised.none, style = 'reverse' },
		Pmenu = { fg = lunarised.bg, bg = lunarised.contrast },
		PmenuSbar = { fg = lunarised.text, bg = lunarised.contrast },
		PmenuSel = { fg = lunarised.bg, bg = lunarised.active },
		PmenuThumb = { fg = lunarised.fg, bg = lunarised.accent },
		Question = { fg = lunarised.green },
		QuickFixLine = { fg = lunarised.highlight, bg = lunarised.white, style = 'reverse' },
		ReplacelMode = { fg = lunarised.red, bg = lunarised.none, style = 'reverse' },
		Search = { fg = lunarised.highlight, bg = lunarised.white, style = 'reverse' },
		SpecialKey = { fg = lunarised.text },
		SpellBad = { fg = lunarised.red, bg = lunarised.none, style = 'italic,undercurl' },
		SpellCap = { fg = lunarised.blue, bg = lunarised.none, style = 'italic,undercurl' },
		SpellLocal = { fg = lunarised.cyan, bg = lunarised.none, style = 'italic,undercurl' },
		SpellRare = { fg = lunarised.yellow, bg = lunarised.none, style = 'italic,undercurl' },
		StatusLine = { fg = lunarised.fg, bg = lunarised.bg_alt },
		StatusLineNC = { fg = lunarised.text, bg = lunarised.bg_alt },
		StatusLineTerm = { fg = lunarised.fg, bg = lunarised.contrast },
		StatusLineTermNC = { fg = lunarised.text, bg = lunarised.disabled },
		TabLineFill = { fg = lunarised.fg },
		Tabline = { fg = lunarised.fg },
		TablineSel = { fg = lunarised.bg, bg = lunarised.accent },
		Title = { fg = lunarised.grey, bg = lunarised.none, style = 'bold' },
		ToolbarButton = { fg = lunarised.fg, bg = lunarised.none, style = 'bold' },
		ToolbarLine = { fg = lunarised.fg, bg = lunarised.bg_alt },
		VertSplit = { fg = lunarised.border, bg = lunarised.bg },
		Visual = { fg = lunarised.none, bg = lunarised.selection },
		VisualMode = { fg = lunarised.yellow, bg = lunarised.none, style = 'reverse' },
		VisualNOS = { fg = lunarised.none, bg = lunarised.selection },
		WarningMsg = { fg = lunarised.orange },
		Warnings = { fg = lunarised.orange },
		WildMenu = { fg = lunarised.orange, bg = lunarised.none, style = 'bold' },
		qfLineNr = { fg = lunarised.highlight, bg = lunarised.white, style = 'reverse' },
	},

	treesitter = {
		TSNone = { },
		TSAnnotation = { fg = lunarised.red, style = 'bold' },
		TSAttribute = { fg = lunarised.blue },
		TSBoolean= { fg = lunarised.green },
		TSCharacter= { fg = lunarised.orange },
		TSConditional = { fg = lunarised.green },
		TSConstBuiltin = { fg = lunarised.blue },
		TSConstMacro = { fg = lunarised.blue },
		TSConstant = { fg = lunarised.yellow },
		TSConstructor = { fg = lunarised.yellow },
		TSEmphasis = { fg = lunarised.grey, style = 'bold' },
		TSError = { fg = lunarised.error, style = 'bold' },
		TSException = { fg = lunarised.red, style = 'bold' },
		TSField = { fg = lunarised.purple },
		TSFloat = { fg = lunarised.red },
		TSFuncBuiltin = { fg = lunarised.text },
		TSFuncMacro = { fg = lunarised.blue },
		TSFunction = { fg = lunarised.blue },
		TSInclude = { fg = lunarised.orange, style = 'bold' },
		TSKeyword = { fg = lunarised.orange },
		TSKeywordFunction = { fg = lunarised.orange, style = 'bold' },
		TSLabel = { fg = lunarised.purple },
		TSLiteral = { fg = lunarised.text },
		TSMethod = { fg = lunarised.text },
		TSNamespace = { fg = lunarised.purple },
		TSNumber = { fg = lunarised.orange },
		TSOperator = { fg = lunarised.purple },
		TSParameterReference= { fg = lunarised.green },
		TSProperty = { fg = lunarised.green },
		TSPunctBracket = { fg = lunarised.text },
		TSPunctDelimiter = { fg = lunarised.text },
		TSPunctSpecial = { fg = lunarised.purple },
		TSRepeat = { fg = lunarised.green, style = 'bold' },
		TSStrike = { },
		TSString = { fg = lunarised.cyan },
		TSStringEscape = { fg = lunarised.disabled },
		TSStringRegex = { fg = lunarised.blue },
		TSSymbol = { fg = lunarised.cyan },
		TSTag = { fg = lunarised.red, style = 'bold' },
		TSTagDelimiter = { fg = lunarised.purple },
		TSText = { fg = lunarised.text },
		TSTextReference = { fg = lunarised.purple },
		TSTitle = { fg = lunarised.grey, bg = lunarised.none, style = 'bold' },
		TSType = { fg = lunarised.yellow },
		TSTypeBuiltin = { fg = lunarised.yellow },
		TSURI = { fg = lunarised.link },
		TSUnderline = { fg = lunarised.fg, bg = lunarised.none, style = 'underline' },
		TSVariable = { fg = lunarised.text },
		TSVariableBuiltin = { fg = lunarised.blue },
		TSWarning = { fg = lunarised.white, bg = lunarised.orange },
	},

	lsp = {
		LspDiagnosticsDefaultError = { fg = lunarised.error },
		LspDiagnosticsSignError = { fg = lunarised.error },
		LspDiagnosticsFloatingError = { fg = lunarised.error },
		LspDiagnosticsVirtualTextError = { fg = lunarised.error },
		LspDiagnosticsUnderlineError = { style = 'undercurl', sp = lunarised.error },
		LspDiagnosticsDefaultWarning = { fg = lunarised.purple},
		LspDiagnosticsSignWarning = { fg = lunarised.purple},
		LspDiagnosticsFloatingWarning = { fg = lunarised.purple},
		LspDiagnosticsVirtualTextWarning = { fg = lunarised.purple},
		LspDiagnosticsUnderlineWarning = { style = 'undercurl', sp = lunarised.purple },
		LspDiagnosticsDefaultInformation = { fg = lunarised.grey },
		LspDiagnosticsSignInformation = { fg = lunarised.grey },
		LspDiagnosticsFloatingInformation = { fg = lunarised.grey },
		LspDiagnosticsVirtualTextInformation = { fg = lunarised.grey },
		LspDiagnosticsUnderlineInformation = { style = 'undercurl', sp = lunarised.grey },
		LspDiagnosticsDefaultHint = { fg = lunarised.yellow },
		LspDiagnosticsSignHint = { fg = lunarised.yellow },
		LspDiagnosticsFloatingHint = { fg = lunarised.yellow },
		LspDiagnosticsVirtualTextHint = { fg = lunarised.yellow },
		LspDiagnosticsUnderlineHint = { style = 'undercurl', sp = lunarised.grey },
		LspReferenceText = { fg = lunarised.accent, bg = lunarised.highlight },
		LspReferenceRead = { fg = lunarised.accent, bg = lunarised.highlight },
		LspReferenceWrite = { fg = lunarised.accent, bg = lunarised.highlight },
	},

	plugins = {
		-- Diff
		diffAdded = { fg = lunarised.green },
		diffRemoved = { fg = lunarised.red },
		diffChanged = { fg = lunarised.purple },
		diffOldFile = { fg = lunarised.yellow },
		diffNewFile = { fg = lunarised.orange },
		diffFile = { fg = lunarised.blue },
		diffLine = { fg = lunarised.comments },
		diffIndexLine = { fg = lunarised.yellow },

		-- GitGutter
		SignColumn = { bg = lunarised.none },
		GitGutterAdd = { fg = lunarised.green },
		GitGutterChange = { fg = lunarised.purple },
		GitGutterDelete = { fg = lunarised.red },

		-- vim-markdown
		mkdURL = { fg = lunarised.purple },
	}
}

if vim.g.lunarised_italic_comments == true then
	theme.treesitter.TSComment= { fg = lunarised.comments, bg = lunarised.none, style = 'italic' }
	theme.base.Comment = { fg = lunarised.comments, bg = lunarised.none, style = 'italic' }
else
	theme.treesitter.TSComment = { fg = lunarised.comments }
	theme.base.Comment = { fg = lunarised.comments }
end

return theme
