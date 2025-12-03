vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
--  See `:help vim.keymap.set()`
local keymap = vim.keymap
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap.set('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

-- increment/decrement numbers
keymap.set('n', '<leader>-', 'C-x', { desc = 'Decrement number' })
keymap.set('n', '<leader>+', 'C-x', { desc = 'Increment number' })

-- window management
keymap.set('n', '<leader>wv', '<C-w>v', { desc = 'Split window vertically' })
keymap.set('n', '<leader>ws', '<C-w>s', { desc = 'Split window horizontally' })
keymap.set('n', '<leader>we', '<C-w>=', { desc = 'Make splits equal size' })
keymap.set('n', '<leader>wc', '<cmd>close<CR>', { desc = 'Close current split' })

keymap.set('n', '<leader>tn', '<cmd>tabnew<CR>', { desc = 'Open new tab' })
keymap.set('n', '<leader>tc', '<cmd>tabclose<CR>', { desc = 'Close current tab' })
keymap.set('n', '<leader>tl', '<cmd>tabn<CR>', { desc = 'Go to next tab' })
keymap.set('n', '<leader>th', '<cmd>tabp<CR>', { desc = 'Go to previous tab' })
keymap.set('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' })

keymap.set('n', '<leader>fE', '<cmd>Explore<CR>', { desc = 'Open Explorer (Legacy)' })
