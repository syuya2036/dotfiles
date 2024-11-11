local wezterm = require 'wezterm';
local act = wezterm.action

local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  local editor_pane = pane:split {
    direction = 'Left',
    size = 0.7,
  }
end)

return {
  initial_cols = 180,
  initial_rows = 60,
  font_size = 12,
  cell_width = 1,
  line_height = 1,
  color_scheme = "tokyonight_night",
  window_background_opacity = 0.8,
  text_background_opacity = 1,
  keys = {
    -- Alt(Opt)+Shift+Fでフルスクリーン切り替え
    {
      key = 'f',
      mods = 'SHIFT|META',
      action = wezterm.action.ToggleFullScreen,
    },
    -- Ctrl+Shift+tで新しいタブを作成
    {
      key = 't',
      mods = 'SHIFT|CTRL',
      action = act.SpawnTab 'CurrentPaneDomain',
    },
    -- Ctrl+Shift+dで新しいペインを作成(画面を分割)
    {
      key = 'd',
      mods = 'SHIFT|CTRL',
      action = wezterm.action.SplitPane { direction = 'Down', size = { Percent = 30 } },
    },
    -- Ctrl+vで ペースト
    { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
    { key = '8', mods = 'CTRL', action = act.PaneSelect },
    {
      key = "l",
      mods = "CMD",
      action = wezterm.action.ActivatePaneDirection "Right",
    },
    -- Ctrl+Command+Jで左のペインに移動
    {
      key = "j",
      mods = "CMD",
      action = wezterm.action.ActivatePaneDirection "Left",
    },
  },
}
