-- 若非 Neovide，直接返回
if not vim.g.neovide then
  return
end

-- ✅ 禁用主題透明背景（由 ui.lua 讀取此變數）
vim.g.transparent_background = false

-- ✅ 字型設定（請換成你喜歡的 Nerd Font）
vim.opt.guifont = "MesloLGS NF:h12"

-- ✅ Neovide 顯示特效與操作優化
vim.g.neovide_cursor_vfx_mode = "railgun"
vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_smooth_scroll = false
vim.g.neovide_hide_mouse_when_typing = true

-- ✅ 新版正確的透明度設定（0~1）
vim.g.neovide_opacity = 0.8
