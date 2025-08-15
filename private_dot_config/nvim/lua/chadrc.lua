---@type ChadrcConfig
local M = {}

M.base46 = {
  integrations = { "blink", "rainbowdelimiters", "render-markdown", "trouble" },
  theme = "tokyodark",
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "block",
  },
  tabufline = {
    lazyload = false,
    order = { "treeOffset", "buffers", "tabs" },
  },
}

M.lsp = {
  signature = false,
}

M.nvdash = {
  load_on_startup = false,
}

return M
