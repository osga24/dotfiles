return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = function()
      local is_neovide = vim.g.neovide == true
      return {
        flavour = "frappe",
        transparent_background = not is_neovide, -- ✅ 只有非 Neovide 才透明
        integrations = {
          neotree = true,
          treesitter = true,
          telescope = true,
          cmp = true,
        },
      }
    end,
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin-frappe")
    end,
  },
}
