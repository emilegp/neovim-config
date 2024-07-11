return {
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets"
    },
    config = function()
      local ls = require("luasnip")
      -- Load your custom snippets
      local snippets = require("config.latex-snippets")

      ls.config.set_config {
        history = true,
        updateevents = "TextChanged,TextChangedI",
      }

      require("luasnip.loaders.from_vscode").lazy_load()

      -- Set up key bindings for specific snippets
      vim.api.nvim_set_keymap('n', '<leader>lf', [[:lua require'config.latex-snippets'.expand_snippet('latexfigure')<CR>]], { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>le', [[:lua require'config.latex-snippets'.expand_snippet('latexequation')<CR>]], { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>la', [[:lua require'config.latex-snippets'.expand_snippet('latexalign')<CR>]], { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lm', [[:lua require'config.latex-snippets'.expand_snippet('latexmatrix')<CR>]], { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lb', [[:lua require'config.latex-snippets'.expand_snippet('latexcodeblock')<CR>]], { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>lc', [[:lua require'config.latex-snippets'.expand_snippet('latexcode')<CR>]], { noremap = true, silent = true })

      -- Optional: Set up key mappings for snippet navigation
      vim.api.nvim_set_keymap('i', '<C-k>', [[<Cmd>lua require'luasnip'.expand_or_jump()<CR>]], { silent = true })
      vim.api.nvim_set_keymap('s', '<C-k>', [[<Cmd>lua require'luasnip'.expand_or_jump()<CR>]], { silent = true })
      vim.api.nvim_set_keymap('i', '<C-j>', [[<Cmd>lua require'luasnip'.jump(-1)<CR>]], { silent = true })
      vim.api.nvim_set_keymap('s', '<C-j>', [[<Cmd>lua require'luasnip'.jump(-1)<CR>]], { silent = true })
      vim.api.nvim_set_keymap('i', '<C-l>', [[<Cmd>lua require'luasnip'.change_choice(1)<CR>]], { silent = true })
      vim.api.nvim_set_keymap('s', '<C-l>', [[<Cmd>lua require'luasnip'.change_choice(1)<CR>]], { silent = true })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require('cmp')
      local luasnip = require('luasnip')

      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-b>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        }),
        sources = cmp.config.sources({
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
        }, {
          { name = 'buffer' },
        }),
      })

      -- Set up nvim-autopairs
      local npairs = require('nvim-autopairs')
      npairs.setup{}

      -- Integrate nvim-autopairs with nvim-cmp
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

      -- Custom handler for single backslash
      cmp.event:on('confirm_done', function(event)
        local status, err = pcall(function()
          local entry = event.entry
          if entry.completion_item.label == '\\' then
            local line = vim.api.nvim_get_current_line()
            local cursor = vim.api.nvim_win_get_cursor(0)
            vim.api.nvim_set_current_line(line:sub(1, cursor[2] - 1) .. line:sub(cursor[2] + 1))
            vim.api.nvim_win_set_cursor(0, { cursor[1], cursor[2] - 1 })
          end
        end)
        if not status then
          -- Silence the error or log it if necessary
          vim.api.nvim_err_writeln("Error in custom cmp handler: " .. err)
        end
      end)
    end,
    dependencies = {
      "windwp/nvim-autopairs"
    }
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup {}
    end
  }
}
