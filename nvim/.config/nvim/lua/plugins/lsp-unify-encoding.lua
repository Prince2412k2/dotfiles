return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      capabilities = (function()
        local caps = vim.lsp.protocol.make_client_capabilities()
        caps.positionEncoding = "utf-16"
        caps.textDocument.positionEncoding = "utf-16"
        return caps
      end)(),
    },
  },
}
