return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons", -- optional
  },
  config = function()
    local rm = require("render-markdown")
    rm.setup({})
    vim.keymap.set("n", "<leader>md", rm.toggle, { desc = "Toggle Markdown Render" })
  end,
}
