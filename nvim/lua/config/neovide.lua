if not vim.g.neovide then
  return
end

-- ✅ 使用透明 Nerd Font
vim.opt.guifont = "MesloLGS NF:h12"

-- ✅ 完全透明背景
vim.g.neovide_opacity = 0.8 -- 試試 0.7 ~ 0.9，看你的桌布亮度

-- ✅ 不要蓋黑色背景（重要）
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    local no_bg = "guibg=NONE ctermbg=NONE"
    vim.cmd("hi Normal " .. no_bg)
    vim.cmd("hi NormalNC " .. no_bg)
    vim.cmd("hi NormalFloat " .. no_bg)
    vim.cmd("hi FloatBorder " .. no_bg)
    vim.cmd("hi Pmenu " .. no_bg)
    vim.cmd("hi PmenuSel " .. no_bg)
  end,
})

-- 💅 美化 Neovide 顯示效果
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_smooth_scroll = false
vim.g.neovide_hide_mouse_when_typing = true
