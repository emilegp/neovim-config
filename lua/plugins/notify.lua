return {
    'rcarriga/nvim-notify',
    config = function()
        require('notify').setup {
            stages = "fade_in_slide_out",  -- Animation stages for notifications
            timeout = 3000,                -- Duration in milliseconds (3 seconds)
            background_colour = "#a6da95", -- Catppuccin Macchiato green color
        }

        -- Replace the default notification handler
        vim.notify = require('notify')
    end
}

