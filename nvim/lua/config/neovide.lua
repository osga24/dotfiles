if not vim.g.neovide then
  return
end

vim.opt.guifont = "MesloLGS NF:h12"

-- 完全不透明
vim.g.neovide_opacity = 1.0
vim.g.neovide_normal_opacity = 1.0

-- 不要浮動視窗透明
vim.opt.winblend = 0
vim.opt.pumblend = 0

-- 其他 UI 行為
vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_smooth_scroll = false
vim.g.neovide_hide_mouse_when_typing = true
