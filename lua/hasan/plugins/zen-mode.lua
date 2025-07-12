return {
  "folke/twilight.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
  },
  config = function()
    vim.keymap.set("n", "<leader>te", "<cmd>TwilightEnable<CR>", { desc = "Twilight Enable" })
    vim.keymap.set("n", "<leader>td", "<cmd>TwilightDisable<CR>", { desc = "Twilight Disable" })
  end
}
