return {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require('toggleterm').setup {
            size = 20,
            open_mapping = [[<C-\>]],  -- Change this to your preferred shortcut
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = '1',
            start_in_insert = true,
            insert_mappings = true,
            terminal_mappings = true,
            persist_size = true,
            direction = 'float',  -- Set to 'float' for floating terminal
            close_on_exit = true,
            shell = vim.o.shell,
            float_opts = {
                border = 'curved',
                winblend = 3,
                highlights = {
                    border = "Normal",
                    background = "Normal",
                },
            },
        }
    end
}
