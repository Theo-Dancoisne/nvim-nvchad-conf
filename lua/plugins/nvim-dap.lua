return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.dap"
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = {
        -- "lua-language-server", -- move this
        -- "typescript-language-server", --move this
        "js-debug-adapter",
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
  }
}

