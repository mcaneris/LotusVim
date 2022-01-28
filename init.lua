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

      local plugins = {
        'barbar',
        'coq',
        'dashboard-nvim',
        'galaxyline',
        'gitsigns',
        'lsp-colors',
        'lspsaga',
        'nvim-lsp-installer',
        'nvim-treesitter',
        'telescope',
        'trouble',
        'which-key'
      }

      for _, plugin in pairs(plugins) do
        require('config.plugins.' .. plugin)
      end

      require'nvim-tree'.setup {}
