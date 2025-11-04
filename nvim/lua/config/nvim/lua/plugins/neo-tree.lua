return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      winblend = 0, -- 預設可能是 15，這會導致 CLI 中浮動視窗「黑一下」
      position = "left",
      width = 35,
    },
    popup_border_style = "rounded",
    use_popups_for_input = false, -- 減少 popup 用量
  },
}
