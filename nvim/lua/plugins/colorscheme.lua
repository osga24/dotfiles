return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      theme = "wave", -- "wave", "dragon", "lotus"
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "frappe",
      transparent_background = false,
      integrations = {
        neotree = true,
        telescope = true,
        treesitter = true,
        which_key = true,
        noice = true,
        mason = true,
        snacks = true,
      },
    },
  },

  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    opts = {
      transparent_background = false,
      integrations = {
        neotree = true,
        telescope = true,
        treesitter = true,
        which_key = true,
        noice = true,
        mason = true,
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
