local function apply_snacks_highlights()
  local highlights = {
    -- input 左邊的 > 符號
    SnacksPickerPrompt = {
      fg = "#7e9cd8",
      bg = "NONE",
    },
    SnacksPickerInputPrompt = {
      fg = "#7e9cd8",
      bg = "NONE",
    },
    SnacksPickerInputIcon = {
      fg = "#7e9cd8",
      bg = "NONE",
    },

    -- picker 樹狀線條
    SnacksPickerTree = {
      fg = "#727169",
      bg = "NONE",
    },

    -- 目前選到的列
    SnacksPickerCursorLine = {
      bg = "#223249",
    },
  }

  for group, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts = opts or {}

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = apply_snacks_highlights,
      })

      vim.schedule(apply_snacks_highlights)

      return opts
    end,
  },
}
