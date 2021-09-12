local colours = require('lunarised.colours')

return {
	normal = {
		a = { fg = colours.bg, bg = colours.accent, gui = 'bold' },
		b = { fg = colours.title, bg = colours.active },
		c = { fg = colours.fg, bg = colours.selection },
	},

	insert = {
		a = { fg = colours.bg, bg = colours.green, gui = 'bold' },
		b = { fg = colours.title, bg = colours.active },
	},

	visual = {
		a = { fg = colours.bg, bg = colours.purple, gui = 'bold' },
		b = { fg = colours.title, bg = colours.active },
	},

	replace = {
		a = { fg = colours.bg, bg = colours.red, gui = 'bold' },
		b = { fg = colours.title, bg = colours.active },
	},

	command = {
		a = { fg = colours.bg, bg = colours.yellow, gui = 'bold' },
		b = { fg = colours.title, bg = colours.active },
	},

	inactive = {
		a = { fg = colours.disabled, bg = colours.bg, gui = 'bold' },
		b = { fg = colours.disabled, bg = colours.bg },
		c = { fg = colours.disabled, bg = colours.selection }
	},
}
