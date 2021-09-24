local base = {
	black = '#111111',
	soot = '#252525',
	a_bit_lighter_than_soot = '#333333',
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
	smoke = '#f2f2f2',
	cloud = '#f6f6f6',
	white = '#ffffff',
	yellow = '#b58900',
}

local components = {
	accent = base.blue,
	active = base.palegrey,
	bg = base.white,
	bg_alt = base.cloud,
	border = base.cloud,
	comments = base.palegrey;
	contrast = base.soot,
	disabled = base.palegrey,
	error = base.pink,
	fg = base.lightgrey,
	float = base.cloud,
	highlight = base.purple,
	selection = base.smoke,
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
	smoke = "#d5d5d5",
	cloud = '#cdcdcd',
	yellow = '#e0a800',

	-- Override assignments to invert most backgrounds/foregrounds
	bg = base.black,
	bg_alt = base.soot,
	border = base.soot,
	contrast = base.cloud,
	disabled = base.grey,
	fg = base.cloud,
	float = base.soot,
	selection = base.a_bit_lighter_than_soot,
}

-- for want of a real stdlib
local lunarised = {}
for k,v in pairs(base) do lunarised[k] = v end
for k,v in pairs(components) do lunarised[k] = v end

if vim.g.lunarised_dark == true then
	for k,v in pairs(overrides_dark) do lunarised[k] = v end
end

return lunarised
