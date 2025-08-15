local options = {
  filetypes = {
    markdown = true,
  },
  suggestion = {
    auto_trigger = true,
    keymap = {
      accept = "<C-]>",
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-[>",
    },
  },
  panel = { enabled = false },
  server_opts_overrides = {},
}

return options
