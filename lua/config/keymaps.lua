-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local ls = require("luasnip")

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

-- In your LuaSnip config or keymaps.lua
vim.keymap.set({ "i", "s" }, "<Tab>", function()
  local blink_ok, blink = pcall(require, "blink.cmp")
  if blink_ok and blink.is_visible() then
    blink.hide()
  end
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
  end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { silent = true })
