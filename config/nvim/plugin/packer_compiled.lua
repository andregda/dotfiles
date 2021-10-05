-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/andregda/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/andregda/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/andregda/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/andregda/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/andregda/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["aerial.nvim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    wants = { "nvim-lspconfig" }
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    wants = { "nvim-web-devicons" }
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/cmp-vsnip"
  },
  ["format.nvim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/format.nvim"
  },
  ["gist-vim"] = {
    commands = { "Gist" },
    loaded = false,
    needs_bufread = false,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/opt/gist-vim",
    wants = { "webapi-vim" }
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    wants = { "plenary.nvim" }
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["lsp-trouble.nvim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim",
    wants = { "nvim-web-devicons", "nvim-lspconfig" }
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["material.vim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/material.vim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\1\2:\0\0\2\0\2\0\0054\0\0\0%\1\1\0>\0\2\2>\0\1\1G\0\1\0\27modules.editor.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    wants = { "nvim-web-devicons" }
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    wants = { "nvim-ts-rainbow", "nvim-ts-autotag" }
  },
  ["nvim-ts-autotag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["startuptime.vim"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/opt/startuptime.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    wants = { "nvim-web-devicons" }
  },
  ["vim-easy-align"] = {
    commands = { "EasyAlign" },
    loaded = false,
    needs_bufread = false,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/opt/vim-easy-align"
  },
  ["vim-header"] = {
    commands = { "AddMITLicense" },
    loaded = false,
    needs_bufread = false,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/opt/vim-header"
  },
  ["vim-sandwich"] = {
    keys = { { "", "sa" }, { "", "sr" }, { "", "sd" } },
    loaded = false,
    needs_bufread = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/opt/vim-sandwich"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["webapi-vim"] = {
    loaded = true,
    path = "/home/andregda/.local/share/nvim/site/pack/packer/start/webapi-vim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\1\0029\0\0\2\0\2\0\0054\0\0\0%\1\1\0>\0\2\2>\0\1\1G\0\1\0\26modules.ui.indentline\frequire\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gist lua require("packer.load")({'gist-vim'}, { cmd = "Gist", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AddMITLicense lua require("packer.load")({'vim-header'}, { cmd = "AddMITLicense", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'startuptime.vim'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file EasyAlign lua require("packer.load")({'vim-easy-align'}, { cmd = "EasyAlign", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> sr <cmd>lua require("packer.load")({'vim-sandwich'}, { keys = "sr", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> sd <cmd>lua require("packer.load")({'vim-sandwich'}, { keys = "sd", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> sa <cmd>lua require("packer.load")({'vim-sandwich'}, { keys = "sa", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'nvim-comment'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles(1) end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
