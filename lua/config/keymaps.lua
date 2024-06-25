-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local discipline = require("m00nk0d3.discipline")
discipline.cowboy()

local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Delete a word backwards
keymap.set("n", "dw", "vb_d")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
-- Exit input mode
keymap.set("i", "jk", "<Esc>")

-- New Tab
keymap.set("n", "te", ":tabedit<CR>", opts)
keymap.set("n", "<tab>", ":tabnext<CR>", opts)

-- Split window
keymap.set("n", "ss", ":split<CR>")
keymap.set("n", "sv", ":vsplit<CR>")
-- Move between windows
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")
