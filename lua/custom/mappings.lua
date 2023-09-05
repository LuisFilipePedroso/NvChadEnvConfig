---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.custom = {
  n = {
    ["<C-p>"] = {":Telescope find_files<CR>", "Find Files"},
    ["<C-o>"] = {":Telescope buffers<CR>", "Open Current Buffers"},
    ["<C-s>"] = {":w<CR>", "Save File"},
    ["<C-f>"] = {":Telescope live_grep<CR>", "Find Text Globally"},
    -- ["<C-/>"] = {"<leader> /<CR>", "Find Text Globally"},

  }
}

M.comment = {
  plugin = true,

  -- toggle comment in both modes
  n = {
    ["<C-/>"] = {
      function()
        require("Comment.api").toggle.linewise.current()
      end,
      "Toggle comment",
    },
  },

  v = {
    ["<C-/>"] = {
      "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      "Toggle comment",
    },
  },
}

return M
