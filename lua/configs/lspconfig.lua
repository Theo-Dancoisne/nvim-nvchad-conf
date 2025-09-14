require("nvchad.configs.lspconfig").defaults()

require("mason-lspconfig").setup({
  ensure_installed = { "lua-language-server", "typescript-language-server" },
})

-- local lspconfig = require "lspconfig"
-- lspconfig.tsserver.setup {}
-- local servers = { "html", "cssls" }
local servers = { "ts_ls" }
vim.lsp.enable(servers)
