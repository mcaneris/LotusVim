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
	"nvim-tree",
	"nvim-treesitter",
	"octo",
	"telescope",
	"trouble",
}

for _, plugin in pairs(plugins) do
	local config_or_done = Lotus.Utils.prequire("plugins." .. plugin)

	-- if a table is returned, we consider it to be a config table to setup the
	-- plugin with. otherwise, the file is already required and applied, so we're
	-- done.
	if config_or_done and type(config_or_done) == "table" then
		Lotus.Utils.prequire(plugin).setup(config_or_done)
	end
end

require("keymap")
