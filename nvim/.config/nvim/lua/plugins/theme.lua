return {
  -- Set rose-pine as the colorscheme in LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },

  -- Configure rose-pine theme options
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "moon", -- options: 'main' | 'moon' | 'dawn'
      dark_variant = "moon",
      bold_vert_split = false,
      dim_nc_background = true,
      disable_background = true, -- transparency
      disable_float_background = true,
      disable_italics = false,
    },
  },
}
