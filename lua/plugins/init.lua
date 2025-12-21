return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },


  -- ME
  {
    -- because it wasn't loaded on Windows at the first press of the Leader key
    "folke/which-key.nvim",
    event = "VimEnter", -- or even "VeryLazy"
  },
  {
    -- because some commands are caught by most terminals, see configs/telescope.lua
    -- but I keep all other NvChad default configs
    "nvim-telescope/telescope.nvim",
    opts = function (_, opts)
     local custom = require "configs.telescope"
     opts.defaults = vim.tbl_deep_extend("force", opts.defaults, custom.defaults)
     return opts
    end,
  }
}

