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

require("lazy").setup({
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
            dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    {
        "ThePrimeagen/harpoon", branch = "harpoon2",
            dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" }
    },

    { "mbill/undotree" },

    { "tpope/vim-fugitive" },

    -- LSP Zero
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'VonHeikemen/lsp-zero.nvim', branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'L3MON4D3/LuaSnip' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lua' },
    { 'rafamadriz/friendly-snippets' },

    { 'folke/tokyonight.nvim' },
    { 'nvim-lualine/lualine.nvim' },
})
