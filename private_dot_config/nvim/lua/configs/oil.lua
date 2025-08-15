return function()
  require("oil").setup {
    {
      view_options = { show_hidden = true },
    },
    vim.keymap.set("n", "<C-x>", require("oil").save),
  }
end
