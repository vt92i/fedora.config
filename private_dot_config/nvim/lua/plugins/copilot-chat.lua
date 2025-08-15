return {
  "CopilotC-Nvim/CopilotChat.nvim",
  build = "make tiktoken",
  event = "BufReadPost",
  opts = {
    highlight_headers = false,
    separator = "---",
    error_header = "> [!ERROR] Error",
  },
}
