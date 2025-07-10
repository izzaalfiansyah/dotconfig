local wezterm = require("wezterm")

-- the font based is https://github.com/tonsky/FiraCode

return {
  font = wezterm.font("Fira Code"),
  font_size = 12.0,
  line_height = 1.25,
  window_background_opacity = 0.725,
  macos_window_background_blur = 30,
  window_background_image_hsb = {
    brightness = 1.0,
    hue = 1.0,
    saturation = 1.0,
  },
}
