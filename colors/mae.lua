-- name:    mae
-- author:  comfysage
-- license: eupl-1.2

local config = require("evergarden.config").get()
config.editor.transparent_background = false

-- palette ====================================================================
local palette = {
  text = "#F8ECE1",
  subtext1 = "#F0D5C7",
  subtext0 = "#deaf9d",
  overlay2 = "#BA8380",
  overlay1 = "#8F5D5B",
  overlay0 = "#7A4F4E",
  surface2 = "#574141",
  surface1 = "#4e3e3e",
  surface0 = "#2E2626",
  base = "#1c1b1d",
  mantle = "#141315",
  crust = "#111012",

  -- accent = "#E07583",
  accent = "#DEAF9D",

  red = "#BF616A",
  orange = "#DE9780",
  yellow = "#EAC48F",
  lime = "#E8EFB6",
  green = "#D1DFB1",
  aqua = "#ABD4B7",
  skye = "#A7D7D0",
  snow = "#A7D7D0",
  blue = "#A5C1D9",
  purple = "#D8BAE3",
  pink = "#F0CADC",
  cherry = "#F5E1EA",
}

local theme = vim.deepcopy(palette, true)

theme.none = "NONE"
theme.colors = palette
theme.sign = theme.none
theme.comment = theme.overlay2
theme.editor = {
  search = theme.accent,
  incsearch = theme.accent,
  float = theme.colors[config.editor.float.color] or theme.none,
  completion = theme.colors[config.editor.completion.color] or theme.none,
}
theme.syntax = {
  keyword = theme.overlay2,
  identifier = theme.subtext1,
  property = theme.subtext0,
  type = theme.aqua,
  context = theme.overlay1,
  operator = theme.overlay1,
  constant = theme.purple,
  func = theme.snow,
  string = theme.yellow,
  macro = theme.skye,
  annotation = theme.cherry,
}
theme.diagnostic = {
  ok = theme.green,
  error = theme.red,
  warn = theme.yellow,
  info = theme.aqua,
  hint = theme.skye,
}
theme.diff = {
  add = theme.green,
  delete = theme.red,
  change = theme.aqua,
}
theme.git = {
  staged = theme.green,
  unstaged = theme.skye,
  ignored = theme.overlay0,
  untracked = theme.subtext1,
}

local hlgroups = require("evergarden.hl").setup(theme, config)
require("evergarden.utils").set_highlights(hlgroups)

vim.g.colors_name = "mae"
