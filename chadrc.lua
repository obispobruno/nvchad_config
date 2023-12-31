---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },

  hl_override = {
    highlights.override,
    NvDashAscii = {
      bg = "none",
      fg = "white",
    },
    NvDashButtons = {
      bg = "none",
      fg = "white",
    },
  },
  hl_add = highlights.add,
  statusline = {
    theme = "vscode",
    separator_style = "default",
  },
  nvdash = {
    load_on_startup = true,

    header = {
      [[   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣢⣴⣿⣷⣶⣶⣶⣶⣦⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣉⡉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡟⣩⣍⢿⣩⣭⢻⣿⣿⣿⣿⣿⣿⣟⣉⣉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣇⢁⠀⠀⠀⡈⠀⣹⣿⣿⣿⣿⣿⡟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⢇⡒⠀⠂⠀⠀⢻⠿⣿⣿⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀ ⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠫⣣⡀⠀⠀⠀⠉⠀⠀⢧⡿⠏⠀⠀⠀            ⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠚⢿⡟⠉⢁⣼⠟⠛⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠃⠀⣿⣷⣾⡿⠃⠀⢀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⣤⣤⣿⣿⣝⡀⠀⣠⣾⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⢀⣄⣀⡤⠒⣰⣿⡏⠀⠈⣿⠟⠻⣿⣶⣯⣿⣯⠑⢤⣀⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⢀⠔⠊⠁⠀⣠⠤⠀⠻⣿⣿⣧⣿⣿⠀⢴⣿⣿⣿⣿⣿⠀⠀⢱⠀⠈⠉⠑⠢⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⢠⠃⠀⡀⠀⠀⠁⠀⠰⡧⡄⠉⠉⠉⠋⠁⠉⠿⠻⠏⠉⠙⢢⠈⠉⠀⠀⠠⡀⠀⠀⠑⣄⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⢸⠃⠁⠀⠀⠀⡤⠀⠂⠉⠁⠀⠀⠰⠴⠀⠀⠀⠀⠀⢠⣶⡤⠃⠀⠀⠀⠀⣬⠆⠀⠀⡤⠉⠒⠀⠀⠀⠀⠀]],
      [[⠀⠀⠸⡆⠀⣾⣹⠋⠀⠀⠀⠀⠀⠈⠑⢦⠀⠀⠀⠤⢄⡀⠸⠁⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠈⢢⡴⠋⠀⠀⡠⠒⡆⠀⠀⠀⡜⠀⠀⠀⠀⠀⠈⢢⠀⠀⠉⠑⢢⠀⠀⠀⠀⢀⠴⠋⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠑⢄⡀⠀⢧⣀⠀⠀⠀⠴⠶⠀⠀⠀⠀⠀⣖⡿⠀⠀⠀⠀⢈⣀⣀⠴⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠀⠙⠂⠤⠷⢤⣀⣀⡠⠤⠤⠭⠤⣀⣀⠴⠊⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },

    -- header = {
    --   [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣶⠾⠿⠿⠿⠿⠿⠿⠷⣶⣦⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    --   [[⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⡾⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⢷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀]],
    --   [[⠀⠀⠀⠀⠀⠀⣠⣾⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠉⠻⣷⣄⠀⠀⠀⠀⠀⠀]],
    --   [[⠀⠀⠀⠀⣠⣾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣿⠟⢁⣀⣠⣀⡀⠀⠈⠻⣷⣄⠀⠀⠀⠀]],
    --   [[⠀⠀⠀⣴⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⠟⠉⠀⠀⠀⠀⠈⢿⣦⠀⠀⠀]],
    --   [[⠀⠀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢶⣦⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣤⠤⠀⠀⠀⠀⠀⠀⢻⣧⠀⠀]],
    --   [[⠀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣷⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⢻⣧⠀]],
    --   [[⢰⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⡆]],
    --   [[⣼⡏⠀⠀⠀⠀⠀⠀⣠⠀⠀⠀⠀⠀⠀⠙⠻⣿⡿⠿⣿⣿⣿⣿⡿⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣧]],
    --   [[⣿⡇⠀⠀⠀⠀⠀⣼⡟⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣷⣶⣿⣿⣥⣄⣠⣶⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
    --   [[⣿⡇⠀⠀⠀⠀⠀⣿⠁⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣭⣿⣟⣿⡟⠛⠛⣿⣯⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿]],
    --   [[⢻⣇⠀⠀⠀⠀⠀⣿⡀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⢿⣷⣾⡟⢿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡟]],
    --   [[⠸⣿⡀⠀⠀⠀⠀⠘⢧⡀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⡟⠈⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠇]],
    --   [[⠀⢻⣧⠀⠀⠀⠀⠀⠀⠙⢶⣄⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣷⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀]],
    --   [[⠀⠀⢻⣧⠀⠀⠀⠀⠀⠀⢼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⠀⠀]],
    --   [[⠀⠀⠀⠻⣧⡀⠀⠀⠀⠀⢸⣿⣿⣿⣏⠙⠛⠋⣿⠿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⢀⣼⠟⠀⠀⠀]],
    --   [[⠀⠀⠀⠀⠙⢿⣆⡀⠀⠀⠀⠙⢿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠙⠻⠿⠿⣿⣿⡗⠀⠀⠀⠀⣴⡿⠋⠀⠀⠀⠀]],
    --   [[⠀⠀⠀⠀⠀⠀⠙⢿⣦⣄⣰⣶⣿⣿⣧⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣠⣿⣿⣶⣄⣴⡿⠋⠀⠀⠀⠀⠀⠀]],
    --   [[⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀]],
    --   [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    -- },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
