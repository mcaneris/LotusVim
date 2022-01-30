vim.g.dashboard_custom_header = Lotus.ASCII.header
vim.g.dashboard_custom_footer = {
	"github.com/mcaneris | github.com/feyn-teknoloji ",
	"                                                ",
	"ASCII Art:                                      ",
	"---  young buddha sitting  ---                  ",
	"---  under yin/yang trees  ---                  ",
	"                                                ",
	"                     from Christopher Johnson's",
	"                            ASCII Art Collection",
	"              https://asciiart.website/index.php",
}

vim.g.dashboard_default_executive = "telescope"

vim.g.dashboard_custom_section = {
	a = { description = { "  Find File          " }, command = "Telescope find_files" },
	b = { description = { "  Recently Used Files" }, command = "Telescope oldfiles" },
	d = { description = { "  Find Word          " }, command = "Telescope live_grep" },
	e = { description = { "  Settings           " }, command = ":e ~/.config/nvim/lv-settings.lua" },
}
