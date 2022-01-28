--[[
-- Look for a configuration file with the server name under the `config/lsps`
-- folder. If found, start the server with the settings. LSP configuration
-- files in `config/lsp` must return a single table with applicable configuration
-- for the LSP.
--]]

local lsp_installer = Lotus.Utils.prequire("nvim-lsp-installer")

if lsp_installer then
	lsp_installer.on_server_ready(function(server)
		local config = Lotus.Utils.prequire("config.lsps." .. server.name)
		server:setup(config or {})
	end)
end
