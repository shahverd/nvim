vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes:1"
vim.opt.foldmethod = "indent"
vim.opt.foldlevelstart = 99
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.arabicshape = false -- based on gnome terminal
vim.opt.completeopt = { "menu", "menuone", "noselect" }

require("plugins")

-- ============================================================================
-- Keymaps
-- ============================================================================
local map = vim.keymap.set
map("n", "<leader>e", ":Explore<CR>")
map("n", "<leader>w", ":write<CR>")
map("n", "<leader>q", ":quit<CR>")
map("n", "gd", vim.lsp.buf.definition)
map("n", "K", vim.lsp.buf.hover)
map("i", "<C-Space>", vim.lsp.buf.signature_help)
-- Make terminal esc act like normal
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
map("n", "<leader>t", ":vsplit | terminal<CR>")
-- Swap / and \ for my personal keyboard
map({ "n", "x", "o" }, "/", "\\")
map({ "n", "x", "o" }, "\\", "/")
map("i", "/", "\\")
map("i", "\\", "/")
map("c", "/", "\\")
map("c", "\\", "/")
-- Window movement in normal mode
map("n", "<C-h>", "<C-w>h", { noremap = true })
map("n", "<C-j>", "<C-w>j", { noremap = true })
map("n", "<C-k>", "<C-w>k", { noremap = true })
map("n", "<C-l>", "<C-w>l", { noremap = true })
