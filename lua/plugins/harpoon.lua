return {
  {
    "ThePrimeagen/harpoon",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon").setup({
        save_on_toggle = true, -- Save the list when toggling Harpoon UI
        save_on_change = true, -- Save the list when adding/removing files
        mark_branch = false,   -- Set to false if you want the same list across all branches
      })

      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      -- Keybindings for Harpoon
      vim.api.nvim_set_keymap('n', '<leader>a', ':lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = false })
      vim.api.nvim_set_keymap('n', '<leader>e', ':lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true })
    end,
  }
}

