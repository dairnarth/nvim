return {
  {
    'nvim-telescope/telescope.nvim',
    init = function()
      local telescope_files = function()
        vim.fn.system('git rev-parse --is-inside-work-tree')
        if vim.v.shell_error == 0 then
          require'telescope.builtin'.git_files({hidden = true})
        else
          require'telescope.builtin'.find_files({hidden = true})
        end
      end
      vim.keymap.set('n', '<leader>ff', telescope_files, {desc = 'Telescope Find/Git Files'})
      vim.api.nvim_create_user_command('TelescopeFindGitFiles', telescope_files, {desc = 'Telescope Find/Git Files'})
    end,
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    init = function()
      vim.keymap.set('n', '<leader>fp', ':NeoTreeShowToggle<CR>',  {silent = true})
      vim.keymap.set('n', '<leader>fb', ':NeoTreeFloatToggle<CR>', {silent = true})
    end,
    cmd = {'NeoTreeShowToggle', 'NeoTreeFloatToggle'},
    dependencies = {
      'MunifTanjim/nui.nvim'
    },
    config = function()
      require('neo-tree').setup({
        close_if_last_window = true,
        default_component_configs = {
          icon = {
            folder_closed = '●',
            folder_open = '○',
            folder_empty = '○',
            default = '-'
          },
          modified = {
              symbol = '●',
          },
        },
      })
    end
  },
  {
    'mbbill/undotree',
    init = function()
      vim.keymap.set('n', '<leader>fu', ':UndotreeToggle<CR>',  {silent = true})
    end,
    cmd = 'UndotreeToggle'
  },
  {
    'alexghergh/nvim-tmux-navigation',
    init = function()
      vim.keymap.set('n', '<C-h>', require('nvim-tmux-navigation').NvimTmuxNavigateLeft)
      vim.keymap.set('n', '<C-j>', require('nvim-tmux-navigation').NvimTmuxNavigateDown)
      vim.keymap.set('n', '<C-k>', require('nvim-tmux-navigation').NvimTmuxNavigateUp)
      vim.keymap.set('n', '<C-l>', require('nvim-tmux-navigation').NvimTmuxNavigateRight)
    end
  }
}
