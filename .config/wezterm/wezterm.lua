local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = 'RESIZE'

config.color_scheme = 'GitHub Dark'
config.font = wezterm.font('UDEV Gothic')

config.cursor_blink_rate = 0
config.text_blink_rate = 0

config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

config.disable_default_key_bindings = true
config.keys = {
  {
    key = 'Space',
    mods = 'ALT',
    action = wezterm.action.SpawnTab('CurrentPaneDomain'),
  },
  {
    key = 'PageUp',
    mods = 'ALT',
    action = wezterm.action.ActivateTabRelative(-1),
  },
  {
    key = 'PageDown',
    mods = 'ALT',
    action = wezterm.action.ActivateTabRelative(1),
  },
  {
    key = 'PageUp',
    mods = 'ALT|SHIFT',
    action = wezterm.action.MoveTabRelative(-1),
  },
  {
    key = 'PageDown',
    mods = 'ALT|SHIFT',
    action = wezterm.action.MoveTabRelative(1),
  },
  {
    key = 'c',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CopyTo('Clipboard'),
  },
  {
    key = 'v',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.PasteFrom('Clipboard'),
  },
}

return config
