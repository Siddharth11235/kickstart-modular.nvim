-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree toggle<CR>', desc = 'Toggle NeoTree', silent = true },
    { '<leader>e', ':Neotree focus<CR>', desc = 'Focus NeoTree', silent = true }, -- opens and focuses Neo-tree
  },
  opts = {
    close_if_last_window = true, -- automatically close neo-tree if it's the last open window
    popup_border_style = 'rounded', -- aesthetic border for popups
    filesystem = {
      follow_current_file = true, -- sync explorer with current buffer
      hijack_netrw = true, -- replace the default netrw file explorer
      use_libuv_file_watcher = true, -- auto-update file tree when changes are made outside of neovim
      filtered_items = {
        hide_dotfiles = false, -- set to true if you want to hide dotfiles by default
        hide_gitignored = true,
      },
      window = {
        position = 'left',
        width = 30,
        mappings = {
          ['\\'] = 'close_window', -- keeps your custom close keybinding
          ['<CR>'] = 'open', -- open file/folder
          ['<C-s>'] = 'open_split', -- open file in a split
          ['<C-v>'] = 'open_vsplit', -- open file in a vertical split
        },
      },
    },
    buffers = {
      follow_current_file = true, -- sync buffer view with the current buffer
      group_empty_dirs = true, -- group empty directories together
    },
  },
}
