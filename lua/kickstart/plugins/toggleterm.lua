-- lua/kickstart/plugins/toggleterm.lua

return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      size = 120,
      open_mapping = [[<C-\>]], -- set your preferred keybinding to toggle terminal
      direction = 'vertical', -- terminal opens on the right
      shading_factor = 1, -- adjust transparency of the terminal
      start_in_insert = true, -- start in insert mode
      persist_size = true, -- maintain terminal size across uses
    }
  end,
}
