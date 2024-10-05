local wezterm = require('wezterm')
local config = wezterm.config_builder()
local nerdfonts = wezterm.nerdfonts

config.color_scheme = 'Gruvbox Material (Gogh)'
local colors = wezterm.get_builtin_color_schemes()[config.color_scheme]

config.colors = {
  tab_bar = { background = colors.background },
}

config.window_frame = { border_bottom_height = '0.5cell', font = wezterm.font('Inter Variable') }
config.window_padding = {
  left = '0.5cell',
  right = '0.5cell',
  top = '0.5cell',
  bottom = '0.5cell',
}
-- config.window_decorations = "RESIZE"

config.front_end = 'WebGpu'
config.webgpu_power_preference = 'HighPerformance'
config.animation_fps = 60

config.cursor_blink_ease_in = 'Linear'
config.cursor_blink_ease_out = 'Linear'
config.default_cursor_style = 'BlinkingBlock'
config.hide_mouse_cursor_when_typing = false

config.font = wezterm.font('Iosevka Nerd Font')
config.font_size = 12

config.enable_scroll_bar = false

config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
config.status_update_interval = 1000
config.tab_bar_at_bottom = true
config.tab_max_width = 32
config.use_fancy_tab_bar = false

local function tab_title(tab_info)
  local title = tab_info.tab_title
  -- if the tab title is explicitly set, take that
  if title and #title > 0 then
    return title
  end
  -- Otherwise, use the title from the active pane
  -- in that tab
  return tab_info.active_pane.title
end

wezterm.on('format-tab-title', function(tab, tabs, panes, conf, hover, max_width)
  local background = colors.ansi[1]
  local foreground = colors.foreground
  local edge_background = colors.background

  if tab.is_active or hover then
    background = colors.ansi[4]
    foreground = colors.background
  end
  local edge_foreground = background

  local title = tab_title(tab)

  -- ensure that the titles fit in the available space,
  -- and that we have room for the edges.
  local max = config.tab_max_width - 9
  if #title > max then
    title = wezterm.truncate_right(title, max) .. '…'
  end

  return {
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = ' ' .. nerdfonts.ple_left_half_circle_thick },
    { Background = { Color = background } },
    { Foreground = { Color = foreground } },
    { Attribute = { Intensity = tab.is_active and 'Bold' or 'Normal' } },
    { Text = ' ' .. (tab.tab_index + 1) .. ': ' .. title .. ' ' },
    { Background = { Color = edge_background } },
    { Foreground = { Color = edge_foreground } },
    { Text = nerdfonts.ple_right_half_circle_thick },
  }
end)

return config
