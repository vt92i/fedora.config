return {
  "MeanderingProgrammer/render-markdown.nvim",
  event = "BufReadPost",
  opts = function()
    dofile(vim.g.base46_cache .. "render-markdown")
    return {
      completions = { lsp = { enabled = true } },
      file_types = { "markdown", "copilot-chat" },
      latex = { enabled = false },
    }
  end,
}
