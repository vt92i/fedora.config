dofile(vim.g.base46_cache .. "blink")

return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  event = "InsertEnter",
  opts = {
    appearance = {
      nerd_font_variant = "normal",
    },
    completion = {
      menu = {
        draw = {
          columns = { { "kind_icon" }, { "label", gap = 1 } },
          components = {
            label = {
              text = function(ctx)
                return require("colorful-menu").blink_components_text(ctx)
              end,
              highlight = function(ctx)
                return require("colorful-menu").blink_components_highlight(ctx)
              end,
            },
          },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 100,
      },
    },
    keymap = { preset = "default" },
    signature = { enabled = false },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
  version = "1.*",
}
