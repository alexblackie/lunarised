local base = {
	black = '#131316',
	soot = '#26262B',
	blue = '#537397',
	cyan = '#508894',
	grey = '#595964',
	green = '#617434',
	none = 'NONE',
	red = '#7B2000',
	pink = '#8E629D',
	palegrey = '#90909D',
	purple = '#5F4D84',
	smoke = '#E7E7E9',
	cloud = '#F1F1F3',
	white = '#FAF9FA',
	yellow = '#B66D3A',
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
	highlight = base.pink,
	selection = base.smoke,
}

-- for want of a real stdlib
local lunarised = {}
for k,v in pairs(base) do lunarised[k] = v end
for k,v in pairs(components) do lunarised[k] = v end

return lunarised
