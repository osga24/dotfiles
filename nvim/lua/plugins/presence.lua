return {
  "andweeb/presence.nvim",
  config = function()
    require("presence").setup({
      neovim_image_text = "keep dev...",
      main_image = "file",
      log_level = "error",
      enable_line_number = true,
      editing_text = "editing %s",
      file_explorer_text = "browsing %s",
      workspace_text = "working on %s",
      client_text = "using lunarvim",
    })
  end,
}
