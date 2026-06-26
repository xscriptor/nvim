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
      format_on_save = { timeout_ms = 2000, lsp_fallback = true },
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
    event = { "BufReadPost", "BufWritePost" },
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
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    config = function()
      local dap = require("dap")
      vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP toggle breakpoint" })
      vim.keymap.set("n", "<leader>dC", dap.continue, { desc = "DAP continue" })
      vim.keymap.set("n", "<leader>dx", dap.terminate, { desc = "DAP terminate" })
      vim.keymap.set("n", "<leader>dr", dap.step_over, { desc = "DAP step over" })
      vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "DAP step into" })
      vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "DAP step out" })
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    opts = {},
    config = function(_, opts)
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup(opts)

      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    event = "VeryLazy",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-python").setup("python")
    end,
  },
  {
    "mxsdev/nvim-dap-vscode-js",
    event = "VeryLazy",
    dependencies = { "mfussenegger/nvim-dap" },
    opts = {
      adapters = { "pwa-node", "pwa-chrome" },
    },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()
      vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "Harpoon add file" })
      vim.keymap.set("n", "<leader>hh", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon menu" })
      vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc = "Harpoon file 1" })
      vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc = "Harpoon file 2" })
      vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc = "Harpoon file 3" })
      vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc = "Harpoon file 4" })
    end,
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
    config = function(_, opts)
      require("persistence").setup(opts)
      vim.keymap.set("n", "<leader>qs", function() require("persistence").save() end, { desc = "Save session" })
      vim.keymap.set("n", "<leader>ql", function() require("persistence").load() end, { desc = "Load last session" })
      vim.keymap.set("n", "<leader>qd", function() require("persistence").stop() end, { desc = "Stop session" })
    end,
  },
  {
    "OXY2DEV/markview.nvim",
    ft = "markdown",
    opts = {},
  },
}
