require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = {
  bashls = {},
  fish_lsp = {},

  cmake = {},
  -- meson = {},

  clangd = {
    cmd = {
      "clangd",
      "-j=8",
      "--all-scopes-completion",
      "--background-index",
      "--clang-tidy",
      "--completion-style=detailed",
      "--header-insertion-decorators=false",
      "--header-insertion=iwyu",
      "--limit-references=1024",
      "--limit-results=512",
      "--log=info",
      "--offset-encoding=utf-16",
      "--pch-storage=memory",
    },
    filetypes = {
      "c",
      "cpp",
    },
  },

  -- ccls = {
  --   init_options = {
  --     compilationDatabaseDirectory = "build",
  --     index = {
  --       threads = 0,
  --     },
  --   },
  -- },

  docker_compose_language_service = {},
  dockerls = {},

  dartls = {},
  gopls = {},
  rust_analyzer = {},
  ruff = {},
  pyright = {},
  zls = {},

  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = {
            "vim",
            "require",
          },
        },
        runtime = {
          version = "LuaJIT",
        },
        telemetry = {
          enable = false,
        },
        workspace = {
          library = {
            vim.env.VIMRUNTIME,
            "${3rd}/luv/library",
            "${3rd}/busted/library",
            -- vim.api.nvim_get_runtime_file("", true),
          },
        },
      },
    },
  },

  html = {},
  cssls = {},
  tailwindcss = {
    filetypes = {
      "javascriptreact",
      "typescriptreact",
      "svelte",
    },
  },

  eslint = {},
  svelte = {},
  ts_ls = {},

  jsonls = {},
  yamlls = {},
  taplo = {}, -- toml
}

local map = vim.keymap.set
local nomap = vim.keymap.del

local on_attach = function(client, bufnr)
  nvlsp.on_attach(client, bufnr)

  nomap("n", "gD", { buffer = bufnr })
  nomap("n", "gd", { buffer = bufnr })
  -- nomap("n", "gi", { buffer = bufnr })
  -- nomap("n", "<leader>sh", { buffer = bufnr })
  nomap("n", "<leader>wa", { buffer = bufnr })
  nomap("n", "<leader>wr", { buffer = bufnr })
  nomap("n", "<leader>wl", { buffer = bufnr })
  nomap("n", "<leader>D", { buffer = bufnr })
  nomap("n", "<leader>ra", { buffer = bufnr })
  -- nomap("n", "gr", { buffer = bufnr })

  map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", { buffer = bufnr, desc = "Code action" })
  map("n", "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>", { buffer = bufnr, desc = "LSP Go to declaration" })
  map(
    "n",
    "<leader>lt",
    "<cmd>lua vim.lsp.buf.type_definition()<cr>",
    { buffer = bufnr, desc = "LSP Go to type definition" }
  )
  map(
    "n",
    "<leader>li",
    "<cmd>lua vim.lsp.buf.implementation()<cr>",
    { buffer = bufnr, desc = "LSP Go to implementation" }
  )
  map(
    "n",
    "<leader>ls",
    "<cmd>lua vim.lsp.buf.signature_help()<cr>",
    { buffer = bufnr, desc = "LSP Show signature help" }
  )
  map("n", "<leader>lR", "<cmd>lua vim.lsp.buf.rename()<cr>", { buffer = bufnr, desc = "LSP Rename" })
  map(
    "n",
    "<leader>lwl",
    "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
    { buffer = bufnr, desc = "LSP List workspace folders" }
  )
  map(
    "n",
    "<leader>lwa",
    "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>",
    { buffer = bufnr, desc = "LSP Add workspace folder" }
  )
  map(
    "n",
    "<leader>lwr",
    "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>",
    { buffer = bufnr, desc = "LSP Remove workspace folder" }
  )
end

for name, opts in pairs(servers) do
  opts.on_attach = on_attach
  opts.on_init = nvlsp.on_init
  opts.capabilities = nvlsp.capabilities

  lspconfig[name].setup(opts)
end
