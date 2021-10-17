local Completion = {}

function Completion.cmp()
    return {
        "hrsh7th/nvim-cmp",
        requires = {
            -- "L3MON4D3/LuaSnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lua",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/vim-vsnip",
            -- "ray-x/lsp_signature.nvim",
            -- { "saadparwaiz1/cmp_luasnip", after = "nvim-cmp" },
        },
        config = require("modules.completion.cmp")(),
    }
end

function Completion.lsp()
    return {
        "neovim/nvim-lspconfig",
        requires = {
            -- "kabouzeid/nvim-lspinstall",
            "williamboman/nvim-lsp-installer",
        },
        config = require("modules.completion.lsp")(),
    }
end

-- function Completion.emmet()
    -- return {
        -- "mattn/emmet-vim",
        -- ft = { "javascript", "html", "css", "scss", "sass" },
    -- }
-- end


function Completion.autopair()
    return {
        "windwp/nvim-autopairs",
        config = require("modules.completion.autopairs")(),
    }
end

return Completion
