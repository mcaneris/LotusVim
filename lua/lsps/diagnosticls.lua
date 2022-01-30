--[[
return {
	args = { "--stdio", "--log-level", "2" },
	filetypes = {
		"elixir",
		"eelixir",
		"lua",
		"markdown",
		"json",
		"typescript",
		"javascript",
	},
	init_options = {
		linters = {
			eslint = {
				command = "eslint_d",
				rootPatterns = { ".git" },
				debounce = 100,
				args = { "--stdin", "--stdin-filename", "%filepath", "--format", "json" },
				sourceName = "eslint_d",
				parseJson = {
					errorsRoot = "[0].messages",
					line = "line",
					column = "column",
					endLine = "endLine",
					endColumn = "endColumn",
					message = "[eslint] ${message} [${ruleId}]",
					security = "severity",
				},
				securities = {
					[2] = "error",
					[1] = "warning",
				},
			},
			mix_credo = {
				command = "mix",
				debounce = 100,
				rootPatterns = {"mix.exs"},
				args = {"credo", "suggest", "--format", "flycheck", "--read-from-stdin"},
				offsetLine = 0,
				offsetColumn = 0,
				sourceName = "mix_credo",
				formatLines = 1,
				formatPattern = {
					"^[^ ]+?:([0-9]+)(:([0-9]+))?:\\s+([^ ]+):\\s+(.*)(\\r|\\n)*$",
					{
						line =  1,
						column = 3,
						message= 5,
						security = 4
					}
				},
				securities = {
					['F'] = "warning",
					['C'] = "warning",
					['D'] = "info",
					['R'] =  "info"
				}
			},
			mix_credo_compile = {
				command = "mix",
				debounce = 100,
				rootPatterns = {"mix.exs"},
				args = {"credo", "suggest", "--format", "flycheck", "--read-from-stdin"},
				offsetLine = -1,
				offsetColumn = 0,
				sourceName = "mix_credo",
				formatLines = 1,
				formatPattern = {
					"^([^ ]+)\\s+\\(([^)]+)\\)\\s+([^ ]+?):([0-9]+):\\s+(.*)(\\r|\\n)*$",
					{
						line =  -1,
						column = -1,
						message= {"[", 2, "]: ", 3, ": ", 5},
						security = 1
					}
				},
				securities = {
					['**'] = "error"
				}
			}
		},
		filetypes = {
			javascript = "eslint",
			javascriptreact = "eslint",
			typescript = "eslint",
			typescriptreact = "eslint",
			elixir = {"mix_credo", "mix_credo_compile"}
		},
		formatters = {
			mix_format = {
				command = "mix",
				args = {"format", "-"},
			},
			eslint_d = {
				command = "eslint_d",
				args = { "--stdin", "--stdin-filename", "%filename", "--fix-to-stdout" },
				rootPatterns = { ".git" },
			},
			prettier = {
				command = "prettier",
				args = { "--stdin-filepath", "%filename" },
			},
			stylua = {
				sourceName = "stylua",
				command = "stylua",
				args = { "%filepath" },
			},
		},
		formatFiletypes = {
			lua = "stylua",
			elixir = "mix_format",
			eelixir = "mix_format",
			css = "prettier",
			javascript = "eslint_d",
			javascriptreact = "eslint_d",
			json = "prettier",
			scss = "prettier",
			less = "prettier",
			typescript = "eslint_d",
			typescriptreact = "eslint_d",
			markdown = "prettier",
		},
	},
}
]]--
