return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  opts = function()
    dofile(vim.g.base46_cache .. "trouble")
    return {}
  end,
}
