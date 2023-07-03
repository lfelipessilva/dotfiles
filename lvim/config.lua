-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.relativenumber = true -- relative line numbers

lvim.plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 } -- catpucchin theme
}

lvim.colorscheme = "catppuccin" -- sets theme to catpuccin

lvim.builtin.terminal.open_mapping = "<c-t>" -- open terminal on Ctrl+T
lvim.keys.normal_mode["<S-l>"] = ":bnext<cr>" -- next buffer in Ctrl + l
lvim.keys.normal_mode["<S-h>"] = ":bprev<cr>" -- next buffer in Ctrl + h
