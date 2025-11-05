-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- 新增語言加這邊
        tsserver = {},
        jsonls = {},
        pyright = {},
        lua_ls = {
          settings = { Lua = { diagnostics = { globals = { "vim" } } } },
        },
        tailwindcss = {
          settings = {
            tailwindCSS = { experimental = { classRegex = {} } },
          },
        },
      },
      setup = {
        dartls = function()
          return true
        end,
      },
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        -- LSP
        -- 新增語言也要加這邊
        "typescript-language-server",
        "json-lsp",
        "pyright",
        "lua-language-server",
        "tailwindcss-language-server",
        -- 格式化/檢查
        "stylua",
        "prettier",
        "biome",
        "eslint_d",
        "black",
        "ruff",
        -- DAP（Flutter 除錯需要時）
        "dart-debug-adapter",
      },
    },
    config = function(_, o)
      require("mason-tool-installer").setup(o)
    end,
  },
}
