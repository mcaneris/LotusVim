vim.api.nvim_exec(
	[[
  if (empty($TMUX))
    if (has("nvim"))
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
      set termguicolors
    endif
  endif
]],
	true
)

require("packages")
require("lotus")
require("globals")
require("settings")

require("plugins")
require("lsps")

