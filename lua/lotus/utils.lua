local lfs = require('lfs')

local is_file = function(file)
	return file ~= '.' and file ~= '..'
end

local ls = function(path)
	local list = {}
  for f in lfs.dir(path) do if is_file(f) then table.insert(list, f) end end
	return list
end

local strip_extension = function(filename)
	return filename:gsub('(.lua)', '')
end

local require_plugin_configs = function()
	for _,f in ipairs(ls('./lua/config/plugins')) do
		require('config.plugins.' .. strip_extension(f))
	end
end

local get_lsp_configs = function()
	local configs = {}
	for _,f in ipairs(ls('./lua/config/lsps')) do
		local name = strip_extension(f)
		configs[name] = require('config.lsps.' .. name)
	end
	return configs
end

return {
	ls = ls,
	get_lsp_configs = get_lsp_configs,
	require_plugin_configs = require_plugin_configs,
}
