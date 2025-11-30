-- .config/nvim/lua/marshmalon/lazy/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",  -- Plugin name
  version = "*",               -- Get the latest version
  lazy = false,                -- Load the plugin immediately (you can change to true to lazy load)
  dependencies = { 
    "nvim-tree/nvim-web-devicons",  -- To enable file icons
  },
  config = function()
    require("nvim-tree").setup {
      -- You can customize the setup here if needed
    }
  end,
}

