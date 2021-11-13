vim.api.nvim_exec([[
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif
]], true)

require('plugins')
require('lotus')
require('globals')
require('keymappings')
require('settings')
require('lsp')

Lotus.Utils.require_plugin_configs()
