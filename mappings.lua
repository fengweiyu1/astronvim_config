-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

-- 首先，设置映射
vim.api.nvim_set_keymap('n', '<leader>,', '<Plug>MarkdownPreview', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<leader>.', '<Plug>MarkdownPreviewStop', { noremap = false, silent = true })
vim.api.nvim_set_keymap('n', '<leader><', '<Plug>MarkdownPreviewToggle', { noremap = false, silent = true })

-- 然后，为 which-key.nvim 提供一个简化的映射表
local wk = require("which-key")

local mappings = {
  ["<C-s>"] = { nil, "Start Markdown Preview" },
  ["<M-s>"] = { nil, "Stop Markdown Preview" },
  ["<C-p>"] = { nil, "Toggle Markdown Preview" }
}

wk.register(mappings, { mode = "n", prefix = "" })


  return{

  -- first key is the mode (n: normal, v: visual, i: insert, t: terminal)
  n = {
    -- secod key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L` 
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    

    -- ["<leader>bD"]  是删除当前缓冲区
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    --
    -- ["<leader>b"] 是缓冲区
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
