return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      local function set_working_directory(state)
        local node = state.tree:get_node()
        if node.type == 'directory' then
          vim.cmd('cd ' .. node.path)
          print("Changed directory to " .. node.path)
        else
          print("Selected node is not a directory")
        end
      end

      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            hide_dotfiles = true,
            hide_gitignored = true,
            hide_by_name = {
              "OneDrive",
            },
            hide_by_pattern = {
              "*/OneDrive/*",
            },
            never_show = {
              ".DS_Store",
              "thumbs.db",
            },
          },
          follow_current_file = {
            enabled = true,
          },
          group_empty_dirs = true,
          hijack_netrw_behavior = "open_current",
          use_libuv_file_watcher = true, -- Enable the file system watcher
        },
        window = {
          width = 30,
          mappings = {
            ["<C-s>"] = set_working_directory,
          },
        },
      })
    end
  }
}
