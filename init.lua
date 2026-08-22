vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

-- ME
-- 
-- Load custom vim scripts
vim.cmd("source " .. vim.fn.stdpath("config") .. "/vimscript/init.vim")

-- Setting up PowerShell 7 properly
if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.o.shell = "C:\\Program Files\\PowerShell\\7\\pwsh.exe"
  vim.o.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
  vim.o.shellquote = ""
  vim.o.shellxquote = ""
end

-- ltex-ls-plus
vim.lsp.config("ltex_plus", {
  settings = {
    ltex = {
      -- language = "auto",
      -- language = "fr",
      language = "en",
      completionEnabled = true,
      dictionary = {
        fr = {
          "PixelStarship2",
        },
      },
    },
  },
})

