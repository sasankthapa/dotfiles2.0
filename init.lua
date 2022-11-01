vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd([[packadd packer.nvim]])
require("packer").startup(function()
  use("wbthomason/packer.nvim")
  use("morhetz/gruvbox")
  use("nvim-treesitter/nvim-treesitter")
end)
vim.opt.list = true
vim.opt.listchars:append("tab:> ")
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = false
vim.opt.swapfile = false
vim.opt.wrap = false
-- Map global leader from \ to Space
vim.g.mapleader = " "
-- Open recently used files
vim.api.nvim_set_keymap("n", "<leader>fr", ":History<CR>", { noremap = true })
-- Open files in same directory as current file
vim.api.nvim_set_keymap("n", "<leader>ff", ":e %:h/<C-d>", { noremap = true })
vim.cmd([[colorscheme gruvbox]])
require("nvim-treesitter.configs").setup({
ensure_installed = { "c", "lua", "rust" },
highlight = {
  enable = false,
},
})
use("nvim-lualine/lualine.nvim")
require("lualine").setup({
options = {
  icons_enabled = true,
  theme = "ayu_dark",
},
})
