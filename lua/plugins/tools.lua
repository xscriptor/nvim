return {
  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          prompt_prefix = " > ",
          selection_caret = "| ",
        },
      })
      pcall(telescope.load_extension, "fzf")
    end,
  },
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    opts = {},
  },
  {
    "folke/todo-comments.nvim",
    event = "BufReadPost",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = {
      format_on_save = { timeout_ms = 500, lsp_fallback = true },
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        python = { "black" },
        rust = { "rustfmt" },
        go = { "gofmt" },
        sh = { "shfmt" },
        bash = { "shfmt" },
        toml = { "taplo" },
        sql = { "sqlfluff" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        python = { "ruff" },
        sh = { "shellcheck" },
        bash = { "shellcheck" },
        zsh = { "shellcheck" },
        markdown = { "markdownlint" },
      }

      vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost" }, {
        group = vim.api.nvim_create_augroup("nvim-lint", { clear = true }),
        callback = function()
          lint.try_lint()
    end,
      })
    end,
  },
  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      view_options = { show_hidden = true },
    },
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    cmd = "ToggleTerm",
    opts = { size = 12, shade_terminals = true },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()
      vim.keymap.set("n", "<leader>ha", function()
        harpoon:list():add()
      end, { desc = "Harpoon add file" })
      vim.keymap.set("n", "<leader>hh", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "Harpoon menu" })
      vim.keymap.set("n", "<leader>h1", function()
        harpoon:list():select(1)
      end, { desc = "Harpoon file 1" })
      vim.keymap.set("n", "<leader>h2", function()
        harpoon:list():select(2)
      end, { desc = "Harpoon file 2" })
      vim.keymap.set("n", "<leader>h3", function()
        harpoon:list():select(3)
      end, { desc = "Harpoon file 3" })
      vim.keymap.set("n", "<leader>h4", function()
        harpoon:list():select(4)
      end, { desc = "Harpoon file 4" })
    end,
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {
      need = 0, -- Set to 0 to always save
    },
    config = function(_, opts)
      require("persistence").setup(opts)

      -- added start session tracking
      vim.keymap.set("n", "<leader>wa", function()
        local persistence = require("persistence")
        if persistence.active() then
          print("Session tracking is already running!")
        else
          persistence.start()
          print("Session tracking started")
        end
      end, { desc = "Start session" })

      vim.keymap.set("n", "<leader>ws", function() -- changed "qs" to "ws"
        require("persistence").save()
        print("Session saved")
      end, { desc = "Save session" })

      vim.keymap.set("n", "<leader>wl", function() -- changed "ql" to "wl"
        require("persistence").load()
      end, { desc = "Load last session" })

      vim.keymap.set("n", "<leader>wd", function() -- changed "qd" to "wd"
        require("persistence").stop()

        print("Session tracking stopped.")
      end, { desc = "Stop session" })
    end,
  },
  {
    "OXY2DEV/markview.nvim",
    ft = "markdown",
    opts = {},
  },
}
