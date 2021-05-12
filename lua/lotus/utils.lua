local lfs = require('lfs')

local is_file = function(file)
	return file ~= '.' and file ~= '..'
end

local ls = function(path)
	local list = {}
  for f in lfs.dir(vim.fn.stdpath('config') .. path) do
		if is_file(f) then
			table.insert(list, f)
		end
	end
	return list
end

local strip = function(string, sub)
	return string:gsub(sub, '')
end

local require_plugin_configs = function()
	for k,v in ipairs(ls('/lua/config/plugins')) do
		if v then
			local name = strip(v, '(.lua)')
			require('config.plugins.' .. name)
		end
	end
end

local get_lsp_configs = function()
	local configs = {}
	for k,f in ipairs(ls('/lua/config/lsps')) do
		if (k) then
			local name = strip(f, '(.lua)')
			configs[name] = require('config.lsps.' .. name)
		end
	end
	return configs
end

return {
	ls = ls,
	get_lsp_configs = get_lsp_configs,
	require_plugin_configs = require_plugin_configs,
}
