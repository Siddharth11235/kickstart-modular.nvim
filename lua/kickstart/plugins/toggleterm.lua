-- lua/kickstart/plugins/toggleterm.lua
return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      size = 120,
      open_mapping = [[<C-\>]], -- keybinding to toggle the terminal
      direction = 'vertical', -- opens the terminal on the right side
      shading_factor = 2, -- adjust transparency of the terminal
      start_in_insert = true, -- starts terminal in insert mode
      persist_size = true, -- maintains the size of the terminal between uses
    }

    -- additional keybinding for toggling terminal within neovim
    vim.keymap.set('n', '<C-\\>', ':ToggleTerm<CR>', { noremap = true, silent = true })

    -- keybinding to easily switch focus between code and terminal
    vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true, desc = 'Exit terminal mode' })
  end,
}
