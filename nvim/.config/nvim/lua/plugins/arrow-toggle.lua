-- lua/plugins/arrow-toggle.lua
return {
  -- No plugin repo needed since this is just a config block
  "nvim-lua/plenary.nvim", -- Dummy plugin to satisfy Lazy (or pick any plugin you use)
  lazy = false, -- Load on startup
  config = function()
    _G.arrow_keys_enabled = true

    function _G.toggle_arrow_keys()
      if _G.arrow_keys_enabled then
        vim.keymap.set("", "<Up>", "<Nop>")
        vim.keymap.set("", "<Down>", "<Nop>")
        vim.keymap.set("", "<Left>", "<Nop>")
        vim.keymap.set("", "<Right>", "<Nop>")
        vim.notify("Arrow keys disabled", vim.log.levels.INFO)
      else
        vim.keymap.del("", "<Up>")
        vim.keymap.del("", "<Down>")
        vim.keymap.del("", "<Left>")
        vim.keymap.del("", "<Right>")
        vim.notify("Arrow keys enabled", vim.log.levels.INFO)
      end
      _G.arrow_keys_enabled = not _G.arrow_keys_enabled
    end

    vim.keymap.set("n", "<leader>ta", function()
      _G.toggle_arrow_keys()
    end, { desc = "Toggle Arrow Keys" })
  end,
}
