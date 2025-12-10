return {
  {
    "uga-rosa/ccc.nvim",
    config = function()
      require("ccc").setup({
        highlighter = {
          auto_enable = true, -- highlights colors automatically
          lsp = true,
        },
      })
    end,
  },
}
