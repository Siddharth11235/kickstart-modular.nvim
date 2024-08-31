-- lua/kickstart/plugins/colorschemes.lua

return {
  {
    -- Tokyonight colorscheme plugin
    'folke/tokyonight.nvim',
    priority = 1000, -- ensure this loads before other start plugins
    config = function()
      -- configure the tokyonight colorscheme
      require('tokyonight').setup {
        style = 'night', -- choose the style: 'storm', 'night', 'moon', 'day'
        transparent = true, -- enable transparency to allow the terminal's background image to show
        terminal_colors = true, -- use the theme colors in the terminal
        sidebars = { 'qf', 'help' }, -- apply a different background for certain windows
      }

      -- load the colorscheme
      vim.cmd 'colorscheme tokyonight-night'

      -- customize highlights further if needed
      vim.cmd 'highlight Normal guibg=NONE ctermbg=NONE' -- ensure normal background is transparent
      vim.cmd 'highlight Comment gui=none' -- example: customize Comment style
    end,
  },

  {
    -- Gruvbox colorscheme plugin
    'morhetz/gruvbox',
    priority = 1000, -- optional; adjust if you have specific load order requirements
    config = function()
      vim.g.gruvbox_contrast_dark = 'hard' -- optional: set contrast level for gruvbox
      vim.cmd 'colorscheme gruvbox'

      -- make sure the background is transparent to show the terminal image
      vim.cmd 'highlight Normal guibg=NONE ctermbg=NONE'
      vim.cmd 'highlight Comment gui=none' -- example: customize Comment style
    end,
  },
}
