local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_domain = 'WSL:Ubuntu'
config.wsl_domains = {
    {
        name = 'WSL:Ubuntu',
	distribution = 'Ubuntu',
	default_cwd = "~",
    },
}

return config
