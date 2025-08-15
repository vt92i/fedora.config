return {
  "HiPhish/rainbow-delimiters.nvim",
  config = function()
    dofile(vim.g.base46_cache .. "rainbowdelimiters")
    require("rainbow-delimiters.setup").setup()
  end,
  event = { "BufReadPost", "BufNewFile" },
}
