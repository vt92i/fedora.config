local options = {
  formatters_by_ft = {
    c = { "clang-format" },
    cpp = { "clang-format" },

    bash = { "shfmt" },
    sh = { "shfmt" },

    dart = { "dart_format" },
    go = { "gofmt" },
    rust = { "rustfmt" },
    zig = { "zigfmt" },

    html = { "prettier" },
    css = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    svelte = { "prettier" },
    json = { "prettier" },

    lua = { "stylua" },
  },

  format_after_save = {
    lsp_fallback = true,
  },
}

return options
