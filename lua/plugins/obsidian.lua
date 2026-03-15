return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/notes/**.md",
    "BufNewFile " .. vim.fn.expand("~") .. "/notes/**.md",
  },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    workspaces = {
      { name = "personal", path = "~/notes" },
    },
    templates = {
      folder = "~/notes/templates",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },
    new_notes_location = "notes_subdir",
    daily_notes = {
      folder = "daily",
      date_format = "%Y-%m-%d",
      template = "daily.md", -- auto-applies template on <leader>nt
    },
  },
}
