return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      vim.cmd([[
        hi NeoTreeNormal guibg=NONE ctermbg=NONE
        hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
        hi NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
      ]])
    end,
  },
}
