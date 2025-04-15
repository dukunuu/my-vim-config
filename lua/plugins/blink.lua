return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets', "moyiz/blink-emoji.nvim", },

  version = '1.*',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'enter',
    },

    appearance = {
      nerd_font_variant = 'mono'
    },

    completion = {
      menu = {
        draw = {
          treesitter = { 'lsp' },
          columns = {
            { 'label', 'label_description', gap = 1 },
            { 'kind_icon', 'kind' },
          },
        },
      },

      documentation = { auto_show = true, auto_show_delay_ms = 500 },
      accept = {
        auto_brackets = {
          enabled = false,
        },
      },
      list = { selection = { preselect = false, auto_insert = false } },
    },

    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
