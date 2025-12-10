-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap("n", "<TAB>", "i<TAB>", { noremap = true, silent = true })
-- xnoremap("<leader>p", '"dp')
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")

-- Open Neo-tree Explorer
vim.keymap.set("n", "<leader>e", "<cmd>Explore<cr>", { desc = "Netrw Explore" })
