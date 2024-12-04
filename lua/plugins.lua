local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require('lazy').setup({
    -- Packer 可以管理自己本身
    'wbthomason/packer.nvim',  -- 这行可以删除，因为 lazy.nvim 不需要自己管理

    -- 你的插件列表...
    -- tokyonight主题
    { "folke/tokyonight.nvim" },
    
    -- nvim-tree
    { "kyazdani42/nvim-tree.lua", dependencies = { "kyazdani42/nvim-web-devicons" } },
    
    -- bufferline
    { "akinsho/bufferline.nvim", dependencies = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } },
    
    -- lualine
    { "nvim-lualine/lualine.nvim", dependencies = { "kyazdani42/nvim-web-devicons" } },
    { "arkav/lualine-lsp-progress" },
    
    -- telescope
    { 'nvim-telescope/telescope.nvim', dependencies = { "nvim-lua/plenary.nvim" } },
    
    -- dashboard-nvim
    { "glepnir/dashboard-nvim", dependencies = { 'nvim-tree/nvim-web-devicons' } },
    
    -- project.nvim
    { "ahmedkhalf/project.nvim" },
    
    -- Vscode-like pictograms
    {
    "onsails/lspkind.nvim",
    event = { "VimEnter" },
    },
    -- Auto-completion engine
    {
    "hrsh7th/nvim-cmp",
    dependencies = {
    "lspkind.nvim",
    "hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
    "hrsh7th/cmp-buffer", -- buffer auto-completion
    "hrsh7th/cmp-path", -- path auto-completion
    "hrsh7th/cmp-cmdline", -- cmdline auto-completion
    },
    config = function()
    require("plugin-config.nvim-cmp")
    end,
    },
    -- Code snippet engine
    {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    },

    --------------------- LSP --------------------
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    {"neovim/nvim-lspconfig" },
})

