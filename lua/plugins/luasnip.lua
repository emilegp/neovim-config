return {
  "L3MON4D3/LuaSnip",
  config = function()
    require("luasnip").config.set_config({
      -- Setting LuaSnip config
      enable_autosnippets = true,
      -- Use Tab (or some other key if you prefer) to trigger visual selection
      store_selection_keys = "<Tab>",
    })
  end
}
