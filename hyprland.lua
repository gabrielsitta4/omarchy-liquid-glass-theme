local active_border_color = "rgba(ffffffb3)"
local inactive_border_color = "rgba(ffffff1f)"

hl.config({
  general = {
    border_size = 1,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },
  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
  decoration = {
    rounding = 18,
    rounding_power = 3,
    inactive_opacity = 0.94,
    shadow = {
      enabled = true,
      range = 32,
      render_power = 3,
      offset = { 0, 10 },
      color = "rgba(00000059)",
      color_inactive = "rgba(00000033)",
    },
    blur = {
      enabled = true,
      size = 10,
      passes = 3,
      noise = 0.02,
      contrast = 0.9,
      brightness = 0.9,
      vibrancy = 0.45,
      vibrancy_darkness = 0.3,
      xray = false,
      popups = true,
    },
  },
})

local glass_layers = "^(omarchy-bar|omarchy-menu|omarchy-notifications|omarchy-osd|omarchy-polkit|omarchy-clipboard|omarchy-emojis|omarchy-reminders|dockplus)$"
hl.layer_rule({ match = { namespace = glass_layers }, blur = true, ignore_alpha = 0.2 })
