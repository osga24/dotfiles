local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- 🔃 基本 buffer & tab 快捷鍵
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("n", "<C-k>", ":bprevious<CR>", opts)
keymap("n", "<C-j>", ":bnext<CR>", opts)
keymap("n", "<C-h>", ":tabprevious<CR>", opts)
keymap("n", "<C-l>", ":tabnext<CR>", opts)

-- 🔁 視窗切換
keymap("n", "<Tab>", "<C-w>w", opts)
keymap("n", "<BS>", "<C-w>W", opts)

-- 🪟 視窗大小調整
keymap("n", "<S-Up>", "<C-w>+", opts)
keymap("n", "<S-Down>", "<C-w>-", opts)
keymap("n", "<S-Left>", "<C-w><", opts)
keymap("n", "<S-Right>", "<C-w>>", opts)

-- 🔧 分割視窗與清除高亮
-- keymap("n", "<leader>sv", ":vsplit<CR>", opts)
-- keymap("n", "<leader>sp", ":split<CR>", opts)
keymap("n", "<leader>n", ":noh<CR>", opts)

-- 🧹 快速關閉 buffer
keymap("n", "<Bslash>q", ":bdelete<CR>", opts)
keymap("n", "<Bslash>z", ":bdelete!<CR>", opts)
keymap("n", "<Bslash>x", ":%bdelete<CR>", opts)
keymap("n", "<Bslash>c", ":%bdelete!<CR>", opts)

-- 🧠 命令列快捷鍵
vim.cmd([[
  cnoremap <C-y> <Up>
  cnoremap <C-l> <Down><BS><C-o>
]])

-- 🪄 行上下移動（上下調整整行）
keymap("n", "<S-PageUp>", ":m-2<CR>", opts)
keymap("n", "<S-PageDown>", ":m+<CR>", opts)
keymap("i", "<S-PageUp>", "<Esc>:m-2<CR>i", opts)
keymap("i", "<S-PageDown>", "<Esc>:m+<CR>i", opts)

-- ⏯️ 切換 list 顯示
keymap("n", "<Bslash>a", ":set list!<CR>", opts)
-- 📋 快速複製選取內容到系統剪貼簿
keymap("v", "<S-Tab>", '"+y', opts)
