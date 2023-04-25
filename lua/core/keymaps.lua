vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "kj", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>v", "<C-w>v") -- 水平新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- 切换buffer
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")

-- ---------- 插件 --------------
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")
-- null-ls
keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>")
--toggleterm
keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
keymap.set("t", "<leader>t", "exit<CR>")
--Trouble
keymap.set("n", "<leader>i", ":TroubleToggle<CR>")
--leap
keymap.set("n", "s", function ()
  local current_window = vim.fn.win_getid()
  require('leap').leap { target_windows = { current_window } }
end)
--tele
-- keymap.set("n", "<leader>ff" ,":Telescope fd<CR>")
