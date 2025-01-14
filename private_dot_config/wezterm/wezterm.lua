local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Tokyo Night"
config.enable_tab_bar = false
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 11.0
config.initial_cols = 256
config.initial_rows = 128
config.window_background_opacity = 0.98
config.window_decorations = "NONE"

return config
