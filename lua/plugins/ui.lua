return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "auto",
        section_separators = "",
        component_separators = "|",
        globalstatus = true,
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        separator_style = "thin",
      },
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPost",
    main = "ibl",
    opts = {
      indent = { char = "|" },
      scope = { enabled = true, show_start = false, show_end = false },
    },
  },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      dashboard.section.header.val = {
        "nvim",
      }
      dashboard.section.buttons.val = {
        dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f", "Find file", ":Telescope find_files<CR>"),
        dashboard.button("r", "Recent", ":Telescope oldfiles<CR>"),
        dashboard.button("q", "Quit", ":qa<CR>"),
      }
      alpha.setup(dashboard.config)
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    event = "BufReadPost",
    opts = { "*" },
  },
}
