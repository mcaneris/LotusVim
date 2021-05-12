local lfs = require('lfs')

local is_file = function(file)
	return file ~= '.' and file ~= '..'
end

local ls = function(path)
	local list = {}
  for f in lfs.dir(path) do if is_file(f) then table.insert(list, f) end end
	return list
end

local require_plugin_configs = function()
	for _,f in ipairs(ls('./lua/config/plugins')) do
		require('config.plugins.' .. f:gsub('(.lua)', ''))
	end
end

return {
	ls = ls,
	require_plugin_configs = require_plugin_configs,
}
