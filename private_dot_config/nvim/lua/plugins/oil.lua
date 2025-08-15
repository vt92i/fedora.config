return {
  "stevearc/oil.nvim",
  config = function()
    require("oil").setup {
      view_options = { show_hidden = true },
      keymaps = {
        ["<C-x>"] = { require("oil").save, mode = "n", desc = "Save all changes" },
      },
    }
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
}
