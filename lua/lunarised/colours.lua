local base = {
	black = '#111111',
	soot = '#252525',
	a_bit_lighter_than_soot = '#333333',
	blue = '#268bd2',
	cyan = '#22a2a8',
	green = '#6d9413',
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
	yellow = '#cc8c14',
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
	-- Desaturate some colours a bit to make them blend better.
	blue = '#68a5d1',
	cyan = '#68d1c8',
	green = '#b9cc51',
	purple = '#6871d1',
	red = '#cc6351',
	yellow = '#cca151',

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
