local wezterm = require 'wezterm';
local act = wezterm.action

local mux = wezterm.mux

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  local editor_pane = pane:split {
    direction = 'Top',
    size = 0.7,
  }
end)

return {
  initial_cols = 140,
  initial_rows = 50,
  font_size = 14.0,
  cell_width = 1.0,
  line_height = 1.0,
  color_scheme = "tokyonight_night",
  window_background_opacity = 0.65,
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
    { key = '8', mods = 'CTRL', action = act.PaneSelect },
  },
}

