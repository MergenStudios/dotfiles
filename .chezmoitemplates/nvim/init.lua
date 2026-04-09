vim.g.mapleader = " "

require("config.lazy")

-- tweak clipboard and cutting behaviour
vim.opt.clipboard = "unnamedplus"

vim.keymap.set({ 'n', 'v' }, 'd', '"_d')
vim.keymap.set({ 'n', 'v' }, 'c', '"_c')

vim.keymap.set({ 'n', 'v' }, 'fw', '<Esc>:w<CR>', { desc = 'Save file' })

-- file / buffer related functions
vim.keymap.set({ 'n', 'v' }, 'fn', ':bnext')
vim.keymap.set({ 'n', 'v' }, 'fp', ':bprev')
vim.keymap.set({ 'n', 'v' }, 'ff', function() Snacks.picker.buffers() end)
