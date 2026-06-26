<h1 align="center"> NVIM </h1>

<p align="center"><a href="https://dev.xscriptor.com/en/?mode=so"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/xrepos/nvim/logo.svg" height="50" alt="X"/></a></p>
<div align="center">

![Neovim](https://img.shields.io/badge/Neovim-0.11+-57A143?style=flat&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-5.1-2C2D72?style=flat&logo=lua&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-blue?style=flat)
![PRs](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat)

</div>
<p align="right">
Complete Neovim configuration with essential plugins, LSP, DAP, formatting, linting, and custom themes with the  <em><a href="https://github.com/xscriptor/">X</a> scheme </em></p>

<h2><em>Index</em></h2>

<ul>
  <li><a href="#requirements">Requirements</a></li>
  <li><a href="#installation">Installation</a></li>
  <li><a href="#themes">Themes</a></li>
  <li><a href="#keybindings">Keybindings</a></li>
  <li><a href="#included-plugins">Included Plugins</a></li>
  <li><a href="#colors">Colors</a></li>
  <li><a href="#notes">Notes</a></li>
  <li><a href="#related-documents">Related Documents</a></li>
  <li><a href="#related-repos">Related Repos</a></li>
  <li><a href="#x">X</a></li>
</ul>


<h2 id="requirements" align="center">Requirements</h2>

<ul>
  <li>Neovim >= 0.11</li>
  <li>git</li>
  <li>ripgrep</li>
  <li>fd</li>
  <li>node (for LSP servers and Prettier)</li>
  <li>python (for Python tools)</li>
</ul>

<h2 id="installation" align="center">Installation</h2>

<ol>
  <li>Clone this repository into your nvim config:</li>
</ol>

```bash
git clone https://github.com/xscriptor/nvim ~/.config/nvim
```

<ol start="2">
  <li>Open Neovim. Lazy.nvim will automatically install all plugins on first start.</li>
</ol>

<ol start="3">
  <li>(Optional) Run <code>:Mason</code> to check LSP server installation status.</li>
</ol>

<h2 id="themes" align="center">Themes</h2>

<p>All themes from <code>references.md</code> are available as colorschemes:</p>

<ul>
  <li>x</li>
  <li>madrid</li>
  <li>lahabana</li>
  <li>miami</li>
  <li>paris</li>
  <li>tokio</li>
  <li>oslo</li>
  <li>helsinki</li>
  <li>berlin</li>
  <li>london</li>
  <li>seul</li>
  <li>praha</li>
  <li>bogota</li>
</ul>

<p>Use any of them with:</p>

```vim
:colorscheme tokio
```

<p>Or using the command:</p>

```vim
:Theme tokio
```

<p>The default theme is <code>x</code>. Change it by adjusting <code>vim.g.theme</code> in <code>init.lua</code>.</p>

<h2 id="keybindings" align="center">Keybindings</h2>

<p>Shortcuts use the leader key and letters to avoid layout dependencies. You can change the leader in <code>init.lua</code>.</p>

<p>If you want to force keyboard mappings, you can define the following in <code>init.lua</code>:</p>

```lua
vim.g.langmap_es = ""
vim.g.langmap_en = ""
```

<p>And then use <code>:KeymapLocale es|en|system</code>.</p>

<h2 id="included-plugins" align="center">Included Plugins</h2>

<ul>
  <li><strong>LSP:</strong> mason, lspconfig, lazydev, fidget</li>
  <li><strong>Treesitter:</strong> + textobjects + context</li>
  <li><strong>Completion:</strong> nvim-cmp + LuaSnip</li>
  <li><strong>UI:</strong> lualine, bufferline, alpha, indent-blankline, colorizer</li>
  <li><strong>Tools:</strong> telescope, trouble, todo-comments, conform, nvim-lint, oil, toggleterm, dap</li>
  <li><strong>Git:</strong> gitsigns, diffview</li>
</ul>

<h2 align="center" id="colors">Colors</h2>


<div align="center">
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_x.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_x.svg" height="100" alt="X"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_madrid.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_madrid.svg" height="100" alt="Madrid"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_lahabana.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_lahabana.svg" height="100" alt="Lahabana"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_miami.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_miami.svg" height="100" alt="Miami"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_paris.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_paris.svg" height="100" alt="Paris"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_tokio.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_tokio.svg" height="100" alt="Tokio"/></a>
</div>
<div align="center">
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_oslo.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_oslo.svg" height="100" alt="Oslo"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_helsinki.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_helsinki.svg" height="100" alt="Helsinki"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_berlin.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_berlin.svg" height="100" alt="Berlin"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_london.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_london.svg" height="100" alt="London"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_praha.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_praha.svg" height="100" alt="Praha"/></a>
  <a href="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_bogota.svg"><img src="https://raw.githubusercontent.com/xscriptor/xassets/main/colors/palette_bogota.svg" height="100" alt="Bogota"/></a>
</div>

<h2 id="notes" align="center">Notes</h2>

<p>If a formatter or linter binary is not installed, <code>conform</code> and <code>nvim-lint</code> will skip it without failing. Use Mason or your preferred package manager to install them.</p>


<h2 align="center" id="related-documents">Related documents</h2>

<ul>
  <li><a href="./docs/cheatsheet.md">Cheatsheet</a></li>
  <li><a href="./docs/troubleshooting.md">Troubleshooting</a></li>
  <li><a href="./CONTRIBUTING.md">Contributing</a></li>
  <li><a href="./SECURITY.md">Security</a></li>
  <li><a href="./SUPPORT.md">Support</a></li>
  <li><a href="./CODE_OF_CONDUCT.md">Code of conduct</a></li>
</ul>

<h2 align="center" id="related-repos">Related Repos</h2>
<ul>
  <li><a href="https://github.com/xscriptor/terminal">Terminal </a> <img src="https://xscriptor.github.io/icons/icons/code/product-design/xsvg/terminal-bash.svg" /></li>
  <li><a href="https://github.com/xscriptor/vscode">VSCode </a><img src="https://xscriptor.github.io/icons/icons/code/product-design/xsvg/vscode-insiders.svg"/></li>
  <li><a href="https://github.com/xscriptor/jetbrains">Jetbrains </a><img src="https://xscriptor.github.io/icons/icons/code/product-design/xsvg/project.svg"/></li>
  <li><a href="https://github.com/xscriptor/gitnapse">Gitnapse </a><img src="https://xscriptor.github.io/icons/icons/code/product-design/xsvg/github-alt.svg"/></li>
  <li><a href="https://github.com/xscriptor/obsidian">Obsidian </a><img src="https://xscriptor.github.io/icons/icons/code/product-design/xsvg/markdown.svg"/></li>
  <li><a href="https://github.com/xscriptor/xfetch">XFetch </a><img src="https://xscriptor.github.io/icons/icons/code/product-design/xsvg/git-fetch.svg"/></li>
</ul>

<br>

<div id="x" align="center">
<h2>X</h2>

<a href="https://dev.xscriptor.com">
  <img src="https://xscriptor.github.io/icons/icons/code/product-design/xsvg/verified-filled.svg" width="24" alt="X Web" />
</a>
 & 
<a href="https://github.com/xscriptor">
  <img src="https://xscriptor.github.io/icons/icons/code/product-design/xsvg/github.svg" width="24" alt="X Github Profile" />
</a>
 & 
<a href="https://www.xscriptor.com">
  <img src="https://xscriptor.github.io/icons/icons/code/product-design/xsvg/quotes.svg" width="24" alt="Xscriptor web" />
</a>

</div>