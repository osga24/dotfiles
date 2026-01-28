local opt = vim.opt

opt.expandtab = false
opt.shiftwidth = 4
opt.tabstop = 4
opt.wrap = true
opt.relativenumber = true
opt.mouse = "a"
opt.list = true
opt.listchars = {
  tab = "» ",
  nbsp = "+",
  trail = "·",
  extends = "→",
  precedes = "←",
}

opt.termguicolors = true

vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
vim.cmd([[hi NormalNC guibg=NONE ctermbg=NONE]])
vim.cmd([[hi NormalFloat guibg=NONE ctermbg=NONE]])
vim.cmd([[hi FloatBorder guibg=NONE ctermbg=NONE]])
