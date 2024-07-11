-- Keybindings for Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files({
    cwd = vim.fn.expand('%:p:h'),
    search_dirs = { vim.fn.expand('%:p:h') }
  })
end, {})

vim.keymap.set('n', '<leader>fg', function()
  builtin.live_grep({
    cwd = vim.fn.expand('%:p:h'),
    search_dirs = { vim.fn.expand('%:p:h') }
  })
end, {})

vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>n', ':Neotree filesystem reveal left<CR>', {})

