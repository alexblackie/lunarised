local colours = require('lunarised.colours')

return {
	normal = {
		a = { fg = colours.bg, bg = colours.accent, gui = 'bold' },
		b = { fg = colours.bg, bg = colours.active },
		c = { fg = colours.fg, bg = colours.selection },
		x = { fg = colours.fg, bg = colours.selection },
		y = { fg = colours.fg, bg = colours.selection },
		z = { fg = colours.bg, bg = colours.active },
	},

	insert = {
		a = { fg = colours.bg, bg = colours.green, gui = 'bold' },
	},

	visual = {
		a = { fg = colours.bg, bg = colours.pink, gui = 'bold' },
	},

	replace = {
		a = { fg = colours.bg, bg = colours.red, gui = 'bold' },
	},

	command = {
		a = { fg = colours.bg, bg = colours.yellow, gui = 'bold' },
	},

	inactive = {
		a = { fg = colours.disabled, bg = colours.bg, gui = 'bold' },
	},
}
