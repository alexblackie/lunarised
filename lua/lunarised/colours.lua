local base = {
	black = '#073642',
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
	smoke = '#f0f0f0',
	white = '#ffffff',
	yellow = '#b58900',
}

local components = {
	accent = base.blue,
	active = base.purple,
	bg = base.white,
	bg_alt = base.smoke,
	border = base.smoke,
	comments = base.palegrey;
	contrast = base.black,
	cursor = base.blue,
	disabled = base.blue,
	error = base.pink,
	fg = base.lightgrey,
	float = base.smoke,
	highlight = base.purple,
	line_numbers = base.palegrey,
	link = base.cyan,
	selection = base.smoke,
	text = base.grey,
}

-- for want of a real stdlib
local lunarised = {}
for k,v in pairs(base) do lunarised[k] = v end
for k,v in pairs(components) do lunarised[k] = v end

return lunarised
