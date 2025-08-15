---@diagnostic disable: different-requires

return {
  {
    "folke/which-key.nvim",
    lazy = false,
  },

  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
  },

  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = require "configs.oil",
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = require "configs.noice",
    dependencies = {
      "stevearc/dressing.nvim",
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "configs.treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
  },

  {
    "RRethy/vim-illuminate",
    event = { "BufReadPost", "BufNewFile" },
  },

  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
      dofile(vim.g.base46_cache .. "rainbowdelimiters")
      require("rainbow-delimiters.setup").setup()
    end,
    event = { "BufReadPost", "BufNewFile" },
  },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "L3MON4D3/LuaSnip",
    build = "make install_jsregexp",
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    event = "BufReadPost",
    opts = require "configs.render-markdown",
  },

  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    cmd = "Copilot",
    opts = require "configs.copilot",
  },

  {
    "CopilotC-Nvim/CopilotChat.nvim",
    event = "BufReadPost",
    build = "make tiktoken",
    opts = require "configs.copilot-chat",
  },

  {
    "IogaMaster/neocord",
    event = "VeryLazy",
    opts = {
      log_level = "error",
    },
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = require "configs.persistence",
  },
}
