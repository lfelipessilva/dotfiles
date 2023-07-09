local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
  {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "christoomey/vim-tmux-navigator",
    "nvim-telescope/telescope.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",

    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

    {
      "nvim-tree/nvim-tree.lua",
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
    },

    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/nvim-cmp",
    "jose-elias-alvarez/null-ls.nvim",
    "hrsh7th/cmp-buffer",

    "windwp/nvim-autopairs",
    "windwp/nvim-ts-autotag",
  }
)