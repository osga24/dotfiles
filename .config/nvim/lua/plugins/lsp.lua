-- plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason.nvim",
      config = true,
    },
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "lua_ls", "pyright", "tsserver" },
      },
    },
  },
  config = function()
    local lspconfig = require("lspconfig")

    -- 單純直接手動啟用 LSP（避免使用 setup_handlers）
    lspconfig.lua_ls.setup({})
    lspconfig.pyright.setup({})
    lspconfig.tsserver.setup({})
  end,
}
