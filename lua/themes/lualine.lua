local palettes = require("themes.palettes")

local function strip_alpha(hex)
  if #hex == 9 then
    return hex:sub(1, 7)
  end
  return hex
end

local M = {}

function M.theme(name)
  name = name or vim.g.colors_name or "x"
  local p = palettes[name]
  if not p then
    p = palettes.x
  end

  local c = {
    bg = strip_alpha(p.background),
    fg = strip_alpha(p.foreground),
    bg_alt = strip_alpha(p.color8),
    comment = strip_alpha(p.color8),
    red = strip_alpha(p.color1),
    green = strip_alpha(p.color2),
    yellow = strip_alpha(p.color3),
    cyan = strip_alpha(p.color6),
  }

  return {
    normal = {
      a = { bg = c.cyan, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_alt, fg = c.fg },
      c = { bg = c.bg, fg = c.fg },
    },
    insert = {
      a = { bg = c.green, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_alt, fg = c.fg },
      c = { bg = c.bg, fg = c.fg },
    },
    visual = {
      a = { bg = c.yellow, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_alt, fg = c.fg },
      c = { bg = c.bg, fg = c.fg },
    },
    replace = {
      a = { bg = c.red, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_alt, fg = c.fg },
      c = { bg = c.bg, fg = c.fg },
    },
    command = {
      a = { bg = c.red, fg = c.bg, gui = "bold" },
      b = { bg = c.bg_alt, fg = c.fg },
      c = { bg = c.bg, fg = c.fg },
    },
    terminal = {
      a = { bg = c.bg_alt, fg = c.green, gui = "bold" },
      b = { bg = c.bg_alt, fg = c.fg },
      c = { bg = c.bg, fg = c.fg },
    },
    inactive = {
      a = { bg = c.bg_alt, fg = c.comment, gui = "bold" },
      b = { bg = c.bg_alt, fg = c.comment },
      c = { bg = c.bg, fg = c.comment },
    },
  }
end

return M
