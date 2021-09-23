local colours = require('lunarised.colours')
local theme = require('lunarised.theme')

-- Add a highlight group for the given group name and colour table
function highlight (group, colour)
	local style = colour.style and "gui=" .. colour.style or "gui=NONE"
	local fg = colour.fg and "guifg=" .. colour.fg or "guifg=NONE"
	local bg = colour.bg and "guibg=" .. colour.bg or "guibg=NONE"
	local sp = colour.sp and "guisp=" .. colour.sp or ""
	local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

	vim.cmd(hl)
	if colour.link then vim.cmd("highlight! link " .. group .. " " .. color.link) end
end

return {
	load = function ()
		if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
		vim.o.background = "light"
		vim.o.termguicolors = true
		vim.g.colors_name = "lunarised"

		vim.g.terminal_color_0 = colours.black
		vim.g.terminal_color_1 = colours.red
		vim.g.terminal_color_2 = colours.green
		vim.g.terminal_color_3 = colours.purple
		vim.g.terminal_color_4 = colours.blue
		vim.g.terminal_color_5 = colours.yellow
		vim.g.terminal_color_6 = colours.cyan
		vim.g.terminal_color_7 = colours.white
		vim.g.terminal_color_8 = colours.grey
		vim.g.terminal_color_9 = colours.red
		vim.g.terminal_color_10 = colours.green
		vim.g.terminal_color_11 = colours.purple
		vim.g.terminal_color_12 = colours.blue
		vim.g.terminal_color_13 = colours.yellow
		vim.g.terminal_color_14 = colours.cyan
		vim.g.terminal_color_15 = colours.white

		for group, colors in pairs(theme.base) do
			highlight(group, colors)
		end

		for group, colors in pairs(theme.treesitter) do
			highlight(group, colors)
		end

		for group, colors in pairs(theme.plugins) do
			highlight(group, colors)
		end
	end
}
