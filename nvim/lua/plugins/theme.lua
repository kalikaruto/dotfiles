return {
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000, -- load before other start plugins
    config = function()
      vim.cmd("colorscheme gruvbox")
    end,
  },
}

