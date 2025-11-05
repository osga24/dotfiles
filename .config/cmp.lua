-- ~/.config/nvim/lua/plugins/cmp.lua
return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts = opts or {}

      -- === Catppuccin Mocha colors ===
      local colors = {
        bg = "#11111b", -- Crust
        border = "#6c7086", -- Overlay0
        selected = "#313244", -- Surface2
        text = "#cdd6f4", -- Text
        match = "#b4befe", -- Lavender
        kind = "#f5e0dc", -- Rosewater or #89b4fa (blue)
      }

      local function set_cmp_hl()
        vim.api.nvim_set_hl(0, "CmpNormal", { bg = colors.bg, fg = colors.text })
        vim.api.nvim_set_hl(0, "CmpBorder", { bg = colors.bg, fg = colors.border })
        vim.api.nvim_set_hl(0, "PmenuSel", { bg = colors.selected, fg = colors.text })
        vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = colors.text })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = colors.match })
        vim.api.nvim_set_hl(0, "CmpItemKind", { fg = colors.kind })
      end

      set_cmp_hl()
      vim.api.nvim_create_autocmd("ColorScheme", { callback = set_cmp_hl })

      opts.window = vim.tbl_deep_extend("force", opts.window or {}, {
        completion = cmp.config.window.bordered({
          border = "rounded",
          winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None",
        }),
        documentation = cmp.config.window.bordered({
          border = "rounded",
          winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None",
        }),
      })

      opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<Tab>"] = cmp.mapping(function(fb)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fb()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function()
          if cmp.visible() then
            cmp.select_prev_item()
          end
        end, { "i", "s" }),
      })

      return opts
    end,
  },
}
