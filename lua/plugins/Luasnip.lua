return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      local ls = require("luasnip")

      -- Basic configuration
      ls.config.set_config({
        history = true,                             -- Keep last snippet to jump back
        update_events = "TextChanged,TextChangedI", -- Update dynamic nodes as you type
        store_selection_keys = "<Tab>",
      })

      -- The Lua Loader
      require("luasnip.loaders.from_lua").lazy_load({
        paths = { "~/.config/nvim/lua/snippets" }
      })
    end,
  },
}
