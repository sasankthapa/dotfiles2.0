vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd([[packadd packer.nvim]])
require("packer").startup(function()
  use("wbthomason/packer.nvim")
  use('hrsh7th/cmp-nvim-lsp')
  use("morhetz/gruvbox")
  use("nvim-treesitter/nvim-treesitter")
  use("nvim-lualine/lualine.nvim")
  use("neovim/nvim-lspconfig")
  use('hrsh7th/nvim-cmp')
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')

  --prettier
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  use('MunifTanjim/eslint.nvim')

  --telescopppee
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
-- Map global leader from \ to Space
vim.g.mapleader = " "
require("sasank.lspcmp")
require("sasank.keymaps")
require("sasank.jspretty")
require("sasank.telescope")
vim.opt.list = true
vim.opt.listchars:append("tab:> ")
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.swapfile = false
vim.opt.wrap = false
vim.cmd([[colorscheme gruvbox]])
require("nvim-treesitter.configs").setup({
ensure_installed = { "c", "lua", "rust" },
highlight = {
  enable = false,
},
})
require("lualine").setup({
options = {
  icons_enabled = true,
  theme = "ayu_dark",
},
})
