local wezterm = require 'wezterm'
local config = wezterm.config_builder()

---------------------------------------------------------------
-- Font
---------------------------------------------------------------
config.font = wezterm.font_with_fallback({
  { family = "JetBrains Mono", weight = "Medium" },
  "Segoe UI Emoji",
})
config.font_size = 19
config.line_height = 1.2

---------------------------------------------------------------
-- Colors
---------------------------------------------------------------
config.color_scheme = "Tokyo Night"

config.colors = {
  cursor_bg = "white",
  cursor_fg = "black",
  cursor_border = "white",
}

---------------------------------------------------------------
-- Cursor
---------------------------------------------------------------
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 600
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

---------------------------------------------------------------
-- Window
---------------------------------------------------------------
-- config.window_decorations = "RESIZE"

config.initial_cols = 120
config.initial_rows = 32

-- Dim panes you're not focused on
config.inactive_pane_hsb = {
  saturation = 0.8,
  brightness = 0.6,
}

---------------------------------------------------------------
-- Background
---------------------------------------------------------------
config.window_background_image = wezterm.home_dir .. "/Downloads/download (3).jpeg"
config.window_background_image_hsb = {
  brightness = 0.015, -- keep it dark so text stays readable
  saturation = 0.9,
  hue = 1.0,
}

---------------------------------------------------------------
-- Tab bar
---------------------------------------------------------------
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 32

return config