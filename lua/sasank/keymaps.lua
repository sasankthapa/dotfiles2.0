-- Open recently used files
vim.api.nvim_set_keymap("n", "<leader>fr", ":History<CR>", { noremap = true })
-- Open files in same directory as current file
vim.api.nvim_set_keymap("n", "<leader>ff", ":e %:h/<C-d>", { noremap = true })

--movements
vim.api.nvim_set_keymap("n","<leader>vh","<C-w>v<C-w>l:Ex<CR>",{ noremap = true })
vim.api.nvim_set_keymap("n","<leader>vs","<C-w>s<C-w>l:Ex<CR>",{ noremap = true })
vim.api.nvim_set_keymap("n","<leader>h","<C-w>h",{ noremap = true })
vim.api.nvim_set_keymap("n","<leader>l","<C-w>l",{ noremap = true })
vim.api.nvim_set_keymap("n","<leader>k","<C-w>k",{ noremap = true })
vim.api.nvim_set_keymap("n","<leader>j","<C-w>j",{ noremap = true })

vim.api.nvim_set_keymap("n","<leader>rc",":e ~/.config/nvim<CR>",{ noremap = true })

--fugit
vim.api.nvim_set_keymap("n","<leader>gg",":Git<CR>",{noremap=true})
