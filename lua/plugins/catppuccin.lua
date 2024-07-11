return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      -- Set the flavour before loading the colorscheme
      require("catppuccin").setup({
        flavour = "macchiato", -- latte, frappe, macchiato, mocha
      })
      vim.cmd.colorscheme "catppuccin"
    end,
  },
}

