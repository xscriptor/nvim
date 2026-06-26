<h1 align="center">Troubleshooting</h1>

<h2>Treesitter issues</h2>

<p>If you see missing syntax highlighting or parser errors:</p>

```bash
rm -rf ~/.local/share/nvim/lazy/nvim-treesitter
nvim
```

<p>Then run <code>:Lazy</code> and press <code>U</code> to update, or rebuild parsers with:</p>

```vim
:TSUpdate
```

<h2>LSP not working</h2>

<p>Check that servers are installed:</p>

```vim
:Mason
```

<p>If a server is missing, install it from Mason. Then verify the language server starts:</p>

```vim
:checkhealth lsp
```

<h2>Missing icons</h2>

<p>If you see missing or broken icons, make sure you have a Nerd Font installed and
configured in your terminal. The config uses <code>nvim-web-devicons</code>
which requires a patched font.</p>

<h2>Plugin not loading</h2>

```vim
:Lazy
```

<p>Press <code>I</code> to install missing plugins, or <code>U</code> to update all.</p>

<p>To reset a single plugin:</p>

```bash
rm -rf ~/.local/share/nvim/lazy/PLUGIN_NAME
nvim
```

<h2>General health check</h2>

```vim
:checkhealth
```

<p>This runs diagnostics for Neovim and all configured plugins.</p>