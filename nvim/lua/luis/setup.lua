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
    "nvim-lua/plenary.nvim",                                     --support for other packages
    "nvim-treesitter/nvim-treesitter",                           --color highlingting
    "christoomey/vim-tmux-navigator",                            --navigate between buffers and tmux
    "nvim-telescope/telescope.nvim",                             --neovim fuzzy finder
    "nvim-telescope/telescope-fzf-native.nvim",                  --faster fuzzy finder

    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, --catpuccin theme

    {
      "nvim-tree/nvim-tree.lua", --tree search
      lazy = false,
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
    },

    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' }, -- Required
        {                            -- Optional
          'williamboman/mason.nvim',
          build = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        { 'williamboman/mason-lspconfig.nvim' }, -- Optional
        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },                  -- Required
        { 'hrsh7th/cmp-nvim-lsp' },              -- Required
        { 'L3MON4D3/LuaSnip' },                  -- Required
        { 'jose-elias-alvarez/null-ls.nvim' },
        { 'fsouza/prettierd' },
        { 'stevearc/conform.nvim' }
      },
    },

    "windwp/nvim-autopairs",    --create pairs for <, {, [, (
    "windwp/nvim-ts-autotag",   --auto rename html tags

    "terrortylor/nvim-comment", --auto comment
    "lewis6991/gitsigns.nvim",  --git integration

    "akinsho/bufferline.nvim",
    'famiu/bufdelete.nvim'
  }
)
