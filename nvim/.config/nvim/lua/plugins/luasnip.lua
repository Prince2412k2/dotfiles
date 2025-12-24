return {
  "L3MON4D3/LuaSnip",
  enabled = true,
  opts = function(_, opts)
    local ls = require("luasnip")
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node

    ls.add_snippets("all", {
      s("shbng", {
        t("#!/usr/bin/env bash"),
        t({ "", "" }),
        i(0),
      }),
    })

    return opts
  end,
}
