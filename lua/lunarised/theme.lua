local lunarised = require('lunarised.colours')

-- Common styles that apply to multiple highlight groups identically.
local presets = {
	highlight = { fg = lunarised.highlight, bg = lunarised.white, style = 'reverse' },
	selection = { fg = lunarised.none, bg = lunarised.selection },
	subtleBlock = { fg = lunarised.none, bg = lunarised.bg_alt },
}

-- Base styles for in-built vim highlight groups
local base = {
	Boolean = { fg = lunarised.green },
	Character = { },
	ColorColumn = { fg = lunarised.none, bg = lunarised.bg_alt },
	Conceal = { fg = lunarised.disabled },
	Conditional = { fg = lunarised.green },
	Constant = { fg = lunarised.fg },
	CursorColumn = presets.subtleBlock,
	CursorLine = presets.subtleBlock,
	CursorLineNr = { fg = lunarised.accent, bg = lunarised.selection },
	Debug = { fg = lunarised.orange },
	Define = { fg = lunarised.blue },
	Delimiter = { fg = lunarised.fg },
	DiffAdd = { fg = lunarised.green, bg = lunarised.none, style = 'reverse' },
	DiffChange = { fg = lunarised.yellow, bg = lunarised.none, style = 'reverse' },
	DiffDelete = { fg = lunarised.orange, bg = lunarised.none, style = 'reverse' },
	DiffText = { fg = lunarised.purple, bg = lunarised.none, style = 'reverse' },
	Directory = { fg = lunarised.blue, bg = lunarised.none },
	EndOfBuffer = { fg = lunarised.bg },
	Error = { fg = lunarised.error, bg = lunarised.none },
	ErrorMsg = { fg = lunarised.none },
	Exception = { fg = lunarised.orange, style = 'bold' },
	Float = { },
	FoldColumn = { fg = lunarised.blue },
	Folded = { fg = lunarised.disabled, bg = lunarised.none, style = 'italic' },
	Function = { fg = lunarised.blue },
	Identifier = { },
	Ignore = { fg = lunarised.disabled },
	IncSearch = presets.highlight,
	Include = { },
	Keyword = { fg = lunarised.fg, style = 'bold' },
	Label = { fg = lunarised.purple },
	LineNr = { fg = lunarised.comments, bg = lunarised.bg_alt },
	Macro = { fg = lunarised.green },
	MatchParen = presets.highlight,
	ModeMsg = { fg = lunarised.accent },
	MoreMsg = { fg = lunarised.accent },
	NonText = { fg = lunarised.disabled },
	Normal = { fg = lunarised.fg, bg = lunarised.bg },
	NormalFloat = { fg = lunarised.fg, bg = lunarised.bg },
	Number = { },
	Operator = { },
	Pmenu = { fg = lunarised.bg, bg = lunarised.contrast },
	PmenuSbar = { fg = lunarised.fg, bg = lunarised.contrast },
	PmenuSel = { fg = lunarised.bg, bg = lunarised.active },
	PmenuThumb = { fg = lunarised.fg, bg = lunarised.accent },
	PreCondit = { fg = lunarised.cyan },
	PreProc = { fg = lunarised.yellow },
	Question = { fg = lunarised.green },
	QuickFixLine = { fg = lunarised.highlight },
	Repeat = { fg = lunarised.green },
	Search = presets.highlight,
	Special = { fg = lunarised.fg },
	SpecialChar = { },
	SpecialComment = { fg = lunarised.grey },
	SpecialKey = { fg = lunarised.error },
	SpellBad = { fg = lunarised.orange, bg = lunarised.none, style = 'undercurl' },
	SpellCap = { fg = lunarised.blue, bg = lunarised.none, style = 'undercurl' },
	SpellLocal = { fg = lunarised.cyan, bg = lunarised.none, style = 'undercurl' },
	SpellRare = { fg = lunarised.yellow, bg = lunarised.none, style = 'undercurl' },
	Statement = { fg = lunarised.blue },
	StatusLine = { fg = lunarised.fg, bg = lunarised.bg_alt },
	StatusLineNC = { fg = lunarised.fg, bg = lunarised.bg_alt },
	StatusLineTerm = { fg = lunarised.fg, bg = lunarised.contrast },
	StatusLineTermNC = { fg = lunarised.fg, bg = lunarised.disabled },
	StorageClass = { fg = lunarised.cyan },
	String = { fg = lunarised.cyan, bg = lunarised.none },
	Structure = { fg = lunarised.puple },
	TabLineFill = { fg = lunarised.fg },
	Tabline = { fg = lunarised.fg },
	TablineSel = { fg = lunarised.bg, bg = lunarised.accent },
	Tag = { fg = lunarised.blue },
	Title = { fg = lunarised.grey, bg = lunarised.none, style = 'bold' },
	Todo = { fg = lunarised.purple, bg = lunarised.none, style = 'bold' },
	Type = { fg = lunarised.yellow },
	Typedef = { fg = lunarised.orange },
	Underlined = { fg = lunarised.fg, bg = lunarised.none, style = 'underline' },
	VertSplit = { fg = lunarised.active, bg = lunarised.none },
	Visual = presets.selection,
	VisualNOS = presets.selection,
	WarningMsg = { fg = lunarised.purple },
	Warnings = { fg = lunarised.white, bg = lunarised.purple },
	WildMenu = { fg = lunarised.purple, bg = lunarised.none, style = 'bold' },
	diffAdded = { fg = lunarised.green },
	diffChanged = { fg = lunarised.purple },
	diffFile = { fg = lunarised.blue },
	diffIndexLine = { fg = lunarised.yellow },
	diffLine = { fg = lunarised.comments },
	diffNewFile = { fg = lunarised.purple },
	diffOldFile = { fg = lunarised.yellow },
	diffRemoved = { fg = lunarised.orange },
	mkdURL = { fg = lunarised.purple },
}

-- Styles for Treesitter-specific groups. Try to use existing mappings to the
-- vim builtins in "base" as much as possible for consistency.
local treesitter = {
	TSAnnotation = { fg = lunarised.orange, style = 'bold' },
	TSAttribute = { fg = lunarised.blue },
	TSBoolean = base.Boolean,
	TSCharacter = base.Character,
	TSConditional = base.Conditional,
	TSConstBuiltin = { fg = lunarised.blue },
	TSConstMacro = { fg = lunarised.blue },
	TSConstant = base.Constant,
	TSConstructor = { fg = lunarised.yellow },
	TSEmphasis = { fg = lunarised.grey, style = 'bold' },
	TSError = base.Error,
	TSException = base.Exception,
	TSField = { fg = lunarised.purple },
	TSFloat = base.Float,
	TSFuncBuiltin = { fg = lunarised.fg },
	TSFuncMacro = base.Function,
	TSFunction = base.Function,
	TSInclude = base.Include,
	TSKeyword = base.Keyword,
	TSKeywordFunction = { },
	TSLabel = base.Label,
	TSLiteral = { fg = lunarised.fg },
	TSMethod = { fg = lunarised.fg },
	TSNamespace = { fg = lunarised.purple },
	TSNone = { },
	TSNumber = base.Number,
	TSOperator = base.Operator,
	TSParameterReference= { fg = lunarised.green },
	TSProperty = { fg = lunarised.green },
	TSPunctBracket = base.Delimiter,
	TSPunctDelimiter = base.Delimiter,
	TSPunctSpecial = base.SpecialChar,
	TSRepeat = base.Repeat,
	TSStrike = { },
	TSString = base.String,
	TSStringEscape = { fg = lunarised.disabled },
	TSStringRegex = { fg = lunarised.blue },
	TSSymbol = { fg = lunarised.cyan },
	TSTag = base.Tag,
	TSTagDelimiter = base.Tag,
	TSText = { fg = lunarised.fg },
	TSTextReference = { fg = lunarised.purple },
	TSTitle = base.Title,
	TSType = base.Type,
	TSTypeBuiltin = base.Type,
	TSURI = { fg = lunarised.blue, bg = lunarised.none, style = 'underline' },
	TSUnderline = base.Underlined,
	TSVariable = { fg = lunarised.fg },
	TSVariableBuiltin = { fg = lunarised.blue },
	TSWarning = base.Warnings,
}

-- Bespoke support for various third-party plugins
local plugins = {
	-- GitGutter
	GitGutterAdd = { fg = lunarised.green, bg = lunarised.bg_alt },
	GitGutterChange = { fg = lunarised.purple, bg = lunarised.bg_alt },
	GitGutterDelete = { fg = lunarised.orange, bg = lunarised.bg_alt },
	SignColumn = { bg = lunarised.bg_alt },

	-- NERDTree
	NERDTreeCWD = { fg = lunarised.fg },
	NERDTreeDir = { fg = lunarised.contrast },
	NERDTreeDirSlash = { fg = lunarised.fg },
	NERDTreeExecFile = { fg = lunarised.highlight },
	NERDTreeHelp = { fg = lunarised.fg },
	NERDTreeUp = { fg = lunarised.disabled },
}

local theme = {
	base = base,
	treesitter = treesitter,
	plugins = plugins,
}

if vim.g.lunarised_italic_comments == true then
	theme.treesitter.TSComment= { fg = lunarised.comments, bg = lunarised.none, style = 'italic' }
	theme.base.Comment = { fg = lunarised.comments, bg = lunarised.none, style = 'italic' }
else
	theme.treesitter.TSComment = { fg = lunarised.comments }
	theme.base.Comment = { fg = lunarised.comments }
end

return theme
