local Completion = {}

function Completion.cmp()
    return {
        "hrsh7th/nvim-cmp",
        requires = {
            "rafamadriz/friendly-snippets",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            "onsails/lspkind-nvim",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            -- "hrsh7th/cmp-vsnip",
            -- "hrsh7th/vim-vsnip",
            -- "ray-x/lsp_signature.nvim",
            -- { "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" },
        },
        config = require("modules.completion.cmp")(),
    }
end

function Completion.coc()
  
end

function Completion.lsp()
    return {
        "neovim/nvim-lspconfig",
        requires = {
            -- "kabouzeid/nvim-lspinstall",
            "tamago324/nlsp-settings.nvim",
            "jose-elias-alvarez/null-ls.nvim",
            "williamboman/nvim-lsp-installer",
        },
       config = require("modules.completion.lsp")(),
    }
end

function Completion.emmet()
    return {
        "mattn/emmet-vim",
        ft = { "javascript", "html", "css", "scss", "sass" },
    }
end

function Completion.autopair()
    return {
        "windwp/nvim-autopairs",
        config = require("modules.completion.autopairs")(),
    }
end

function Completion.DAP()
  return {
    "mfussenegger/nvim-dap",
    requires = {
      "Pocco81/DAPInstall.nvim",
    },
    config = require("modules.completion.DAP")(),
  }
end

return Completion
