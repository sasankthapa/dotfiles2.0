vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd([[packadd packer.nvim]])
require("packer").startup(function()
  use("wbthomason/packer.nvim")
  use('hrsh7th/cmp-nvim-lsp')
  use("morhetz/gruvbox")
  use("nvim-treesitter/nvim-treesitter")
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use("neovim/nvim-lspconfig")
  use('hrsh7th/nvim-cmp')
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')

  --prettier
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  use('MunifTanjim/eslint.nvim')

  use('folke/tokyonight.nvim')

  --vim fugit
  use("tpope/vim-fugitive")

  --telescopppee
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
-- Map global leader from \ to Space
vim.g.mapleader = " "
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true
require("sasank.autocmds")
require("sasank.lspcmp")
require("sasank.keymaps")
require("sasank.jspretty")
require("sasank.telescope")
require("sasank.lualine")
vim.opt.list = true
vim.opt.listchars:append("tab:> ")
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.swapfile = false
vim.opt.wrap = false
vim.cmd([[colorscheme tokyonight]])
require("nvim-treesitter.configs").setup({
ensure_installed = { "c", "lua", "rust", "javascript", "typescript" },
highlight = {
  enable = true,
},
})
require("lualine").setup({
options = {
  icons_enabled = true,
  theme = "tokyonight",
},
})
