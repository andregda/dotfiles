local UI = {}

function UI.bufferline()
    return {
        "romgrk/barbar.nvim",
        wants = "nvim-web-devicons",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
        config = require("modules.ui.bufferline")(),
    }
end

function UI.indentline()
    return {
        "lukas-reineke/indent-blankline.nvim",
        event = "BufRead",
        setup = function()
            require("modules.ui.indentline")()
        end,
    }
end

function UI.filemanager()
    return {
        "kyazdani42/nvim-tree.lua",
        wants = "nvim-web-devicons",
        requires = { "kyazdani42/nvim-web-devicons", opt = false },
        config = require("modules.ui.filemanager")(),
    }
end

function UI.whichkey()
    return {
        "folke/which-key.nvim",
        config = require("modules.ui.whichkey")(),
  }
end

function UI.telescope()
    return {
        "nvim-telescope/telescope.nvim",
        wants = "nvim-web-devicons",
        requires = {
            "nvim-lua/popup.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-fzy-native.nvim",
            {
                "kyazdani42/nvim-web-devicons",
                opt = true,
            },
        },
        config = require("modules.ui.telescope")(),
    }
end

function UI.treesitter()
    return {

        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        wants = {
            "nvim-ts-rainbow",
            "nvim-ts-autotag",
        },
        requires = {
            { "p00f/nvim-ts-rainbow", opt = true },
            { "windwp/nvim-ts-autotag", opt = true },
        },
        config = require("modules.ui.treesitter")(),
    }
end

function UI.colorizer()
    return {
        "norcalli/nvim-colorizer.lua",
        config = require("modules.ui.colorizer")(),
    }
end

function UI.colorscheme()
    return {
        "kaicataldo/material.vim",
        config = require("modules.ui.schemes")(),
    }
end

function UI.statusline()
    return {
      "nvim-lualine/lualine.nvim",
      requires = {'kyazdani42/nvim-web-devicons', opt = true},
      config = require("modules.ui.lualine")(),
  }
end

return UI
