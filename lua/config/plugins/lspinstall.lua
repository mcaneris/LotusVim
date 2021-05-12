local function make_config()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities.textDocument.completion.completionItem.snippetSupport = true
	capabilities.textDocument.completion.completionItem.resolveSupport = {
		properties = {
			'documentation',
			'detail',
			'additionalTextEdits',
		}
	}

  return {
    capabilities = capabilities,
		on_attach = require('lsp').on_attach,
  }
end

local function merge_configs(default, options)
	local config = default
	for k, v in pairs(options) do config[k] = v end
	return config
end

local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
		local configs = Lotus.Utils.get_lsp_configs()
		local config = make_config()

		if configs[server .. '-ls'] then
			config = merge_configs(config, configs[server .. '-ls'])
		end

    require'lspconfig'[server].setup(config)
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
