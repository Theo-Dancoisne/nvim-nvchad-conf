local dap = require("dap")
local dapui = require("dapui")
local mason_path = vim.fn.stdpath("data") .. "/mason"

local js_languages = { "javascript", "typescript", "javascriptreact", "typescriptreact", "vue" }

dap.adapters["pwa-node"] = {
  type = "server",
  host = "localhost",
  port = "${port}",
  -- port = "4026",
  executable = {
    command = "node",
    args = { mason_path .. "/packages/js-debug-adapter/js-debug/src/dapDebugServer.js", "${port}" },
  },
}

for _, language in ipairs(js_languages) do
  dap.configurations[language] = {
    {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "${file}",
      cwd = "${workspaceFolder}",
      -- runtimeExecutable = "node",
    },
  }
end

require("dapui").setup()
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
-- dap.listeners.before.event_terminated.dapui_config = function()
--   dapui.close()
-- end
-- dap.listeners.before.event_exited.dapui_config = function()
--   dapui.close()
-- end

