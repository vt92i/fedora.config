---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "tokyodark",
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "block",
  },
  tabufline = {
    -- lazyload = false,
    order = { "treeOffset", "buffers" },
  },
}

M.nvdash = {
  load_on_startup = false,
}

return M
