local M = {}

function M.config()
  -- local which_key = require "which-key"
  local dap = require "dap"

  local options = {
    active = false,
    on_config_done = nil,
    breakpoint = {
      text = "",
      texthl = "LspDiagnosticsSignError",
      linehl = "",
      numhl = "",
    },
    breakpoint_rejected = {
      text = "",
      texthl = "LspDiagnosticsSignHint",
      linehl = "",
      numhl = "",
    },
    stopped = {
      text = "",
      texthl = "LspDiagnosticsSignInformation",
      linehl = "DiagnosticUnderlineInfo",
      numhl = "LspDiagnosticsSignInformation",
    },
  }

  vim.fn.sign_define("DapBreakpoint", options.breakpoint)
  vim.fn.sign_define("DapBreakpointRejected", options.breakpoint_rejected)
  vim.fn.sign_define("DapStopped", options.stopped)

  dap.defaults.fallback.terminal_win_cmd = "50vsplit new"

--   which_key.mappings["d"] = {
--     name = "Debug",
--     t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
--     b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
--     c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
--     C = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run To Cursor" },
--     d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
--     g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
--     i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
--     o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
--     u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
--     p = { "<cmd>lua require'dap'.pause.toggle()<cr>", "Pause" },
--     r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
--     s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
--     q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
--   }

  if dap.on_config_done then
    dap.on_config_done(dap)
  end
end

function M.DAP()
  -- DAPInstall
  local dap_install = require("dap-install")

  dap_install.setup({
    installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
  })

end

return setmetatable({}, {
    __call = function()
        M.DAP()
        return M.config()
    end,
})
