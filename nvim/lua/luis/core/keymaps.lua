-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type

keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>") -- find files within current working directory, respects .gitignoreS

keymap.set("n", "<leader>f", "<cmd>lua vim.lsp.buf.format()<cr>")

keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

keymap.set("n", "<S-h>", "<cmd>:bprevious<cr>") -- previous buffer
keymap.set("n", "<S-l>", "<cmd>:bnext<cr>") -- next buffer
keymap.set("n", "<leader>q", "<cmd>:Bdelete<cr>") -- close

keymap.set("n", "<leader>wf", function()
	require("trouble").toggle()
end)

vim.keymap.set("n", "<leader>ww", function()
	require("trouble").toggle("workspace_diagnostics")
end)
