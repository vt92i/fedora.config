local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

config.adjust_window_size_when_changing_font_size = false
config.color_scheme = "Tokyo Night"
config.disable_default_key_bindings = true
config.enable_kitty_keyboard = true
config.enable_tab_bar = false
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
config.font_size = 11.5
config.initial_cols = 110
config.initial_rows = 32
config.key_tables = { copy_mode = {}, search_mode = {} }
config.keys = {
	{ key = "+", mods = "SHIFT|CTRL", action = act.IncreaseFontSize },
	{ key = "-", mods = "CTRL", action = act.DecreaseFontSize },
	{ key = "C", mods = "SHIFT|CTRL", action = act.CopyTo("Clipboard") },
	{ key = "V", mods = "SHIFT|CTRL", action = act.PasteFrom("Clipboard") },
}
config.window_background_opacity = 0.98
config.window_decorations = "RESIZE"
config.window_padding = {
	left = "0.5cell",
	right = "0.5cell",
	top = "0.4cell",
	bottom = "0.2cell",
}

return config
