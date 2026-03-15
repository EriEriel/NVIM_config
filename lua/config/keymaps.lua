-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set('n', '<leader>nn', ':ObsidianNew<CR>', { desc = 'New note' })
vim.keymap.set('n', '<leader>nf', ':ObsidianSearch<CR>', { desc = 'Find note' })
vim.keymap.set('n', '<leader>nt', ':ObsidianToday<CR>', { desc = 'Daily note' })
vim.keymap.set('n', '<leader>nx', function()
  local line = vim.api.nvim_get_current_line()
  if line:match('%[ %]') then
    vim.api.nvim_set_current_line(line:gsub('%[ %]', '[x]'))
  elseif line:match('%[x%]') then
    vim.api.nvim_set_current_line(line:gsub('%[x%]', '[ ]'))
  end
end, { desc = 'Toggle checkbox' })

local tb = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', tb.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', tb.live_grep, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>fb', tb.buffers, { desc = 'Find buffers' })
