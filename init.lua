vim.o.guifont = "CodeNewRoman Nerd Font Mono:h13"
vim.o.number = true
vim.g.python3_host_prog = '/usr/bin/python3.12'
vim.g.node_host_prog = '/home/emilegp/.nvm/versions/node/v22.4.1/bin/node'
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.o.clipboard = 'unnamedplus'

require("config.lazy")
require("config.keybindings")
require("config.vim-options")
require("config.tldraw")

if vim.g.neovide == true then
    vim.api.nvim_set_keymap('n', '<F11>', ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end
