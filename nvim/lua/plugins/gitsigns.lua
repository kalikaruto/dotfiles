-- ================================================================================================
-- TITLE : gitsigns.nvim
-- LINKS :
--   > github : https://github.com/lewis6991/gitsigns.nvim
-- ABOUT : Git integration for buffers (shows diff signs, provides hunk actions, and more).
-- ================================================================================================

return {
  "lewis6991/gitsigns.nvim",
  dependencies = {},
  config = function()
    local gitsigns = require("gitsigns")
    gitsigns.setup({})

    -- Hunk navigation
    vim.keymap.set("n", "<leader>n", function()
      if vim.wo.diff then return "]c" end
      vim.schedule(function() gitsigns.next_hunk() end)
      return "<Ignore>"
    end, { expr = true, desc = "Next Git hunk" })

    vim.keymap.set("n", "<leader>b", function()
      if vim.wo.diff then return "[c" end
      vim.schedule(function() gitsigns.prev_hunk() end)
      return "<Ignore>"
    end, { expr = true, desc = "Previous Git hunk" })

    -- Hunk actions
    vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk, { desc = "Stage hunk" })
    vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, { desc = "Reset hunk" })
    vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview hunk" })
    vim.keymap.set("n", "<leader>hb", function() gitsigns.blame_line({ full = true }) end, { desc = "Blame line" })
    vim.keymap.set("n", "<leader>hS", gitsigns.stage_buffer, { desc = "Stage buffer" })
    vim.keymap.set("n", "<leader>hR", gitsigns.reset_buffer, { desc = "Reset buffer" })
    vim.keymap.set("n", "<leader>hu", gitsigns.undo_stage_hunk, { desc = "Undo stage hunk" })
  end,
}
