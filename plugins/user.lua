-- TODO:: test
-- user.lua 用于配置文件的个性化设置
-- TODO: :test 2:
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- *******************************************
  -- *************  Todo lsit  *****************
  -- *******************************************
  {
    "folke/todo-comments.nvim",
    depends = { "nvim-lua/plenary.nvim" },
    --depends 的意思是依赖于nvim-lua/plenary.nvim
    -- config = function()
    --   require("todo-comments").setup()
    -- end,
    opts = {},
    -- Highlight todo comments
    -- Comments with trailing exclamation marks
    --TODO = { icon = " ", color = "info", alt = { "WIP", "REVIEW" } },
    -- Comments with trailing question marks
    --HACK = { icon = " ", color = "warning", alt = { "FIXME" } },
    -- Comments with trailing plus signs
    event = "User AStroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open Telescope todo list" },
    },
  },
}
