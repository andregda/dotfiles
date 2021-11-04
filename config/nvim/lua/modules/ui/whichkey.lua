local M = {}

function M.config()
      require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
end

return setmetatable({}, {
    __call = function()
        return M.config()
    end,
})
