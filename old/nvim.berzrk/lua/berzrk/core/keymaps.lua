vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Netrw
vim.keymap.set("n", "<leader>ev", vim.cmd.Ex, { desc = 'Open Explorer (netrw)' })


-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- Navigation between Splits
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- FIX: Doesn't work
--vim.keymap.set('n', '<leader>tn', ':tabn<CR>') --  go to next tab
--vim.keymap.set('n', '<leader>tp', ':tabp<CR>') --  go to previous tab


-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x')

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP')

-- TODO: Add more keymaps
--
-- Force quit
vim.keymap.set("n", "<C-q>", "<cmd>q!<CR>");

-- Tabs
vim.keymap.set("n", "<leader>wo", ":tabnew<CR>:Neotree<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>wq", ":bdelete<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<leader>w[", ":tabp<CR>", { desc = "Previous tab" })
vim.keymap.set("n", "<leader>w]", ":tabn<CR>", { desc = "Next tab" })

-- Misc
vim.keymap.set("n", "<leader>ml", "<cmd> set wrap!<CR>", { desc = "Toggle Line Wrap" })
