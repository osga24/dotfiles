local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- 核心：LazyVim 與其內建插件
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    { import = "lazyvim.plugins.extras.coding.nvim-cmp" },
    { import = "lazyvim.plugins.extras.editor.telescope" },

    -- 語言與 UI extras
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.ui.dashboard-nvim" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },

    -- 自訂插件（放在 ~/.config/nvim/lua/plugins/）
    { import = "plugins" },
  },

  -- 建自訂插件預設不延遲載入（易於除錯）
  defaults = {
    lazy = false,
    version = false,
  },

  -- 預設色系候選
  install = { colorscheme = { "catppuccin-frappe", "tokyonight", "habamax" } },

  -- 自動檢查更新（靜默通知）
  checker = {
    enabled = true,
    notify = false,
  },

  -- 精簡 runtimepath（保持你原本的精簡列表）
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
