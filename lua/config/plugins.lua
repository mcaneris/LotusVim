--[[
-- Applying configuration files for plugins.
--]]

local plugins = {
	"coq",
	"dashboard-nvim",
	"galaxyline",
	"gitsigns",
	"lsp-colors",
	"lspsaga",
	"nvim-treesitter",
	"telescope",
	"trouble",
}

for _, plugin in pairs(plugins) do
	require("config.plugins." .. plugin)
end

require("keymap")

local nvim_tree = Lotus.Utils.prequire("nvim-tree")
if nvim_tree then
	nvim_tree.setup({})
	require("config.plugins.nvim-tree")
end
