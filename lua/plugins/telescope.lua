return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('telescope').setup{
        defaults = {
          vimgrep_arguments = {
            'rg',
            '--color=never',
            '--no-heading',
            '--with-filename',
            '--line-number',
            '--column',
            '--smart-case',
            '--glob=!.git/',
            '--glob=!node_modules/**',
            '--glob=!OneDrive/**',
            '--glob=!**/.*',
            '--glob=!.config/**',
            '--glob=!.julia/**',
          },
          file_ignore_patterns = { "^OneDrive/", "^node_modules/" },
          prompt_prefix = "> ",
          selection_caret = "> ",
          entry_prefix = "  ",
          initial_mode = "insert",
          selection_strategy = "reset",
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              mirror = false,
            },
            vertical = {
              mirror = false,
            },
          },
          file_sorter = require'telescope.sorters'.get_fuzzy_file,
          generic_sorter = require'telescope.sorters'.get_generic_fuzzy_sorter,
          path_display = {"truncate"},
          winblend = 0,
          border = {},
          borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
          color_devicons = true,
          use_less = true,
          set_env = { ['COLORTERM'] = 'truecolor' },
          file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
          grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
          qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
          buffer_previewer_maker = require'telescope.previewers'.buffer_previewer_maker,
          mappings = {
            i = {
              ["<C-n>"] = require'telescope.actions'.move_selection_next,
              ["<C-p>"] = require'telescope.actions'.move_selection_previous,
              ["<C-c>"] = require'telescope.actions'.close,
            },
            n = {
              ["<C-c>"] = require'telescope.actions'.close,
            },
          },
        }
      }
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  },
}

