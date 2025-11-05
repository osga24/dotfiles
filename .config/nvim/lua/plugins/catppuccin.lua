return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "frappe",
      transparent_background = true,
      integrations = {
        neotree = true,
        telescope = true,
        treesitter = true,
        which_key = true,
        noice = true,
        mason = true,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin-frappe")

      vim.api.nvim_create_autocmd("UIEnter", {
        once = true,
        callback = function()
          vim.cmd([[
            hi Normal guibg=NONE ctermbg=NONE
            hi NormalNC guibg=NONE ctermbg=NONE
            hi NormalFloat guibg=NONE ctermbg=NONE
            hi FloatBorder guibg=NONE ctermbg=NONE
            hi NeoTreeNormal guibg=NONE ctermbg=NONE
            hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
            hi LazyNormal guibg=NONE ctermbg=NONE
            hi LazyNormalNC guibg=NONE ctermbg=NONE
          ]])
        end,
      })
    end,
  },
}
