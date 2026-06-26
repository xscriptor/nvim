# Neovim Cheat Sheet

## Basic Movement
- `h` `j` `k` `l` → Left, Down, Up, Right.
- `w` / `b`     → Jump to the start of the next / previous word.
- `e`           → Jump to the end of the word.
- `0` / `$`     → Go to the start / end of the line.
- `gg` / `G`    → Go to the start / end of the file.
- `ctrl + u/d`  → Move up / down half a page.

## Editing
- `i` / `a`     → Insert mode / Insert after cursor.
- `o` / `O`     → New line below / above.
- `x`           → Delete character under cursor.
- `dw`          → Delete to the end of the word.
- `dd`          → Delete (cut) current line.
- `yy`          → Copy (yank) current line.
- `p`           → Paste after cursor.
- `u` / `ctrl+r` → Undo / Redo.

## Search and Replace
- `/text`       → Search "text" forward.
- `?text`       → Search "text" backward.
- `n` / `N`     → Next / Previous result.
- `:%s/a/b/g`   → Replace all 'a' with 'b' in the file.

## Window Management
- `:vsplit`     → Vertical split.
- `:split`      → Horizontal split.
- `ctrl + w + h/j/k/l` → Move between windows.
- `ctrl + w + q` → Close current window.

## Essential Commands
- `:w`          → Save.
- `:q`          → Quit.
- `:wq`         → Save and quit.
- `:q!`         → Quit without saving.
- `:Lazy`       → Open plugin manager (Lazy.nvim).
- `:checkhealth`→ Check Nvim health status.

## Custom Keybindings

### General
- `<leader>w`  → Write all files (`:wa`).
- `<leader>q`  → Quit all (`:qa`).
- `<leader>e`  → Open file explorer (Oil.nvim).
- `<leader>t`  → Toggle terminal (ToggleTerm).

### Telescope
- `<leader>ff` → Find files.
- `<leader>fg` → Live grep (search text).
- `<leader>fb` → List open buffers.
- `<leader>fh` → Search help tags.
- `<leader>td` → Show TODO comments.
- `<leader>tt` → Toggle diagnostics (Trouble).

### LSP
- `gd`        → Go to definition.
- `gI`        → Go to implementation.
- `gr`        → Go to references.
- `K`         → Show hover info.
- `<leader>rn`→ Rename symbol.
- `<leader>ca`→ Code action.
- `<leader>ds`→ Document symbols.
- `<leader>ws`→ Workspace symbols.

### Diagnostics
- `[d`        → Previous diagnostic.
- `]d`        → Next diagnostic.
- `<leader>do`→ Open diagnostic float.
- `<leader>dl`→ Send diagnostics to location list.