-- name:    amity
-- author:  comfysage
-- license: eupl-1.2

local config = require("evergarden.config").get()
config.editor.transparent_background = false

-- palette ====================================================================
local palette = {
  text = "#F8E1E2",
  subtext1 = "#F0C7C9",
  subtext0 = "#DE9DA0",
  overlay2 = "#BA808F",
  overlay1 = "#A97789",
  overlay0 = "#7A4E61",
  surface2 = "#57414F",
  surface1 = "#302733",
  surface0 = "#2A262E",
  base = "#19171D",
  mantle = "#141218",
  crust = "#0F0D12",

  accent = "#fedadc",

  red = "#D2717F",
  orange = "#E9AB8C",
  yellow = "#F4D29B",
  lime = "#E9F6CA",
  green = "#EDFDE2",
  aqua = "#B8D4BF",
  skye = "#ACD4C0",
  snow = "#BFE4DF",
  blue = "#86ADCC",
  purple = "#C7B8E1",
  pink = "#F6C0D0",
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
  func = theme.purple,
  string = theme.snow,
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

vim.g.colors_name = "amity"
