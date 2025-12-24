return {
  "saghen/blink.cmp",
  opts = {
    snippets = {
      expand = function(snippet)
        require("luasnip").lsp_expand(snippet)
      end,
    },

    sources = {
      default = {
        "lsp",
        "path",
        "buffer",
        "snippets",
      },
    },

    completion = {
      keyword = {
        range = "full",
      },
      accept = {
        auto_brackets = {
          enabled = false,
        },
      },
    },

    -- ?? THIS is the important part
    filtering = {
      require_keyword = false,
    },
  },
}
