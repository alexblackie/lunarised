local base = {
	black = '#111111',
	soot = '#252525',
	blue = '#268bd2',
	cyan = '#2aa198',
	green = '#7d8d09',
	grey = '#586e75',
	lightgrey = '#657b83',
	none = 'NONE',
	orange = '#cb4b16',
	palegrey = '#839496',
	pink = '#d33682',
	purple = '#6c71c4',
	red = '#dc322f',
	smoke = '#f6f6f6',
	white = '#ffffff',
	yellow = '#b58900',
}

local components = {
	accent = base.blue,
	active = base.palegrey,
	bg = base.white,
	bg_alt = base.smoke,
	border = base.smoke,
	comments = base.palegrey;
	contrast = base.black,
	cursor = base.blue,
	disabled = base.palegrey,
	error = base.pink,
	fg = base.lightgrey,
	float = base.smoke,
	highlight = base.purple,
	line_numbers = base.palegrey,
	link = base.cyan,
	selection = base.smoke,
	text = base.grey,
}

local overrides_dark = {
	-- Brighten colours to maintain higher contrast
	blue = '#2ca1f4',
	cyan = '#35ccbf',
	green = '#aabf0b',
	orange = '#f45c1a',
	pink = '#f43f97',
	purple = '#868cf4',
	red = '#f73733',
	smoke = '#cdcdcd',
	yellow = '#e0a800',

	-- Override assignments to invert most backgrounds/foregrounds
	bg = base.black,
	bg_alt = base.soot,
	border = base.soot,
	contrast = base.smoke,
	disabled = base.grey,
	fg = base.smoke,
	float = base.soot,
	line_numbers = base.grey,
	selection = base.soot,
	text = base.smoke,
}

-- for want of a real stdlib
local lunarised = {}
for k,v in pairs(base) do lunarised[k] = v end
for k,v in pairs(components) do lunarised[k] = v end

if vim.g.lunarised_dark == true then
	for k,v in pairs(overrides_dark) do lunarised[k] = v end
end

return lunarised
