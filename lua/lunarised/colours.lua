local base = {
	black = '#111111',
	soot = '#252525',
	a_bit_lighter_than_soot = '#333333',
	blue = '#268bd2',
	cyan = '#22a2a8',
	green = '#6d9413',
	grey = '#586e75',
	none = 'NONE',
	orange = '#cb4b16',
	palegrey = '#839496',
	pink = '#d33682',
	purple = '#6c71c4',
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
	fg = base.grey,
	highlight = base.purple,
	selection = base.smoke,
}

-- for want of a real stdlib
local lunarised = {}
for k,v in pairs(base) do lunarised[k] = v end
for k,v in pairs(components) do lunarised[k] = v end

return lunarised
