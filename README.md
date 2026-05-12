# nvim

Complete and modern Neovim configuration with essential plugins, LSP, DAP, formatting, linting, and custom themes based on references.md.

## Requirements

* Latest stable Neovim
* git
* ripgrep
* fd
* node (for LSP servers and Prettier)
* python (for Python tools)

## Installation

1. Clone this repository into your nvim config:
```bash
git clone <your-repo> ~/.config/nvim

```


2. Open Neovim and run:

```vim
   :Lazy sync
   :Mason

```

3. To generate a reproducible lockfile, run `:Lazy sync` and confirm that `lazy-lock.json` is created before pushing changes.

## Themes

All themes from `references.md` are available as colorschemes:

* x
* madrid
* lahabana
* seul
* miami
* paris
* tokio
* oslo
* helsinki
* berlin
* london
* praha
* bogota

Use any of them with:

```vim
:colorscheme tokio

```

Or using the command:

```vim
:Theme tokio

```

The default theme is `x`. Change it by adjusting `vim.g.theme` in `init.lua`.

## Keybindings

Shortcuts use the leader key and letters to avoid layout dependencies. You can change the leader in `init.lua`.

If you want to force keyboard mappings, you can define the following in `init.lua`:

```lua
vim.g.langmap_es = ""
vim.g.langmap_en = ""

```

And then use `:KeymapLocale es|en|system`.

## Included Plugins

* **LSP:** mason, lspconfig, lazydev, fidget
* **Treesitter:** + textobjects + context
* **Completion:** nvim-cmp + LuaSnip
* **UI:** lualine, bufferline, alpha, indent-blankline, colorizer
* **Tools:** telescope, trouble, todo-comments, conform, nvim-lint, oil, toggleterm, dap
* **Git:** gitsigns, diffview

## Notes

If a formatter or linter binary is not installed, `conform` and `nvim-lint` will skip it without failing. Use Mason or your preferred package manager to install them.
