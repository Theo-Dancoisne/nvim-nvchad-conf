require("nvchad.configs.lspconfig").defaults()

-- local lspconfig = require "lspconfig"
-- lspconfig.tsserver.setup {}
-- local servers = { "html", "cssls" }
local servers = { "ts_ls" }
vim.lsp.enable(servers)
