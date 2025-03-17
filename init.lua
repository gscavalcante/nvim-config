-- Author: Gabriel Cavalcante
-- Email: gscavalcante@gmail.com
-- Blog: https://gcavalcante.com

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>")

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.opt`

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help "list"`
--  and `:help "listchars"`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Change space
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", "<cmd>echo 'Use h to move!!'<CR>")
vim.keymap.set("n", "<right>", "<cmd>echo 'Use l to move!!'<CR>")
vim.keymap.set("n", "<up>", "<cmd>echo 'Use k to move!!'<CR>")
vim.keymap.set("n", "<down>", "<cmd>echo 'Use j to move!!'<CR>")

-- [[ Install `lazy.nvim` plugin manager ]]
require("config.lazy")

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
