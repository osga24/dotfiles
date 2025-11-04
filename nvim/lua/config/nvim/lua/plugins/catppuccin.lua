return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- ⬅️ 這非常重要！
    priority = 1000, -- ⬅️ 保證第一個載入
    opts = {
      flavour = "frappe", -- 你想用的變體
      transparent_background = true,
      integrations = {
        neotree = true,
        telescope = true,
        treesitter = true,
        -- 你還可以加上 cmp, lsp_saga, mason 等等
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin-frappe") -- ⬅️ 放這裡才對
    end,
  },
}
