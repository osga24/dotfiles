return {
  "akinsho/toggleterm.nvim",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-\>]], -- ✅ Ctrl+\ 開啟終端
      direction = "float", -- 也可以改成 horizontal / vertical
      float_opts = {
        border = "curved",
        winblend = 0,
      },
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      persist_mode = false,
    })
  end,
}
