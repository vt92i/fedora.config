return function()
  require("persistence").setup {
    vim.keymap.set("n", "<leader>Ss", function()
      require("persistence").select()
    end, { desc = "session select" }),
    vim.keymap.set("n", "<leader>Sl", function()
      require("persistence").load()
    end, { desc = "session load cwd" }),
  }
end
