vim.g.mapleader = " "  -- Make sure the leader key is set to space

local which_key = require("which-key")

-- Define your custom keybindings
local mappings = {
  ["<leader>"] = {
    e = { "<cmd>NvimTreeToggle<CR>", "Toggle NvimTree sidebar" },  -- <leader>e toggles the sidebar
  },
}

-- Register the mappings with which-key
which_key.register(mappings)

