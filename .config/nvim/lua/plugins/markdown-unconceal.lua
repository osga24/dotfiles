-- ~/.config/nvim/lua/plugins/markdown-unconceal.lua
return {
  {
    "LazyVim/LazyVim",
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "markdown",
        callback = function()
          vim.opt_local.conceallevel = 0
        end,
      })
    end,
  },
}
