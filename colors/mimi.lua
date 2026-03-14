-- name:    mimi
-- author:  comfysage
-- license: eupl-1.2

local config = require("evergarden.config").get()
config.editor.transparent_background = false

-- palette ====================================================================
local palette = {
  text = "#F8ECE1",
  subtext1 = "#F0DBC7",
  subtext0 = "#EACFB7",
  overlay2 = "#B6987D",
  overlay1 = "#8F735B",
  overlay0 = "#765F4B",
  surface2 = "#4D4035",
  surface1 = "#33200D",
  surface0 = "#201810",
  base = "#1C1712",
  mantle = "#1C1207",
  crust = "#120D08",

  accent = "#AD496C",

  red = "#AF4C58",
  orange = "#B87058",
  yellow = "#CFA06B",
  lime = "#CFA06B",
  green = "#A6C99F",
  aqua = "#A1CFB7",
  skye = "#95C2BC",
  snow = "#95C2BC",
  blue = "#A4B7C9",
  purple = "#CE8C98",
  pink = "#CE8C98",
  cherry = "#CE8C98",
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
  constant = theme.pink,
  func = theme.snow,
  string = theme.lime,
  macro = theme.skye,
  annotation = theme.skye,
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

vim.g.colors_name = "mimi"
