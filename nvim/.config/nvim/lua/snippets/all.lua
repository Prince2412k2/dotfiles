local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("shbng", {
    t("#!/usr/bin/env bash"),
    t({ "", "" }),
    i(0),
  }),

  s("pbng", {
    t("#!/usr/bin/env python"),
    t({ "", "" }),
    i(0),
  }),
}
