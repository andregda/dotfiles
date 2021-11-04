local M = {}

function M.config()
    local cmp = require("cmp")
    local types = require('cmp.types')
    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local lspkind = require('lspkind')
    vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"

    cmp.setup({

        completion = {
            autocomplete = { types.cmp.TriggerEvent.TextChanged },
            completeopt = 'menu,menuone,noselect',
        },

        snippet = {
          expand = function(args)
            -- vim.fn["vsnip#anonymous"](args.body)
           require("luasnip").lsp_expand(args.body)
          end,
        },

        documentation = {
          border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        },

        sources = {
            { name = "nvim_lsp" },
            { name = "path" },
            { name = "buffer" },
            { name = "luasnip" },
            -- { name = "cmp_tabnine" },
            { name = "nvim_lua" },
            -- { name = "calc" },
            -- { name = "emoji" },
            -- { name = "treesitter" },
            -- { name = "crates" },
            --{ name = "vsnip" },
        },

        mapping = {
            ["<TAB>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
            ["<S-TAB>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.close(),
            ["<CR>"] = cmp.mapping.confirm({
                behavior = cmp.ConfirmBehavior.Replace,
                select = true,
            }),
        },
        -- Use buffer source for `/`.
        cmp.setup.cmdline('/', {
            sources = {
                { name = 'buffer' }
            }
        }),

        -- Use cmdline & path source for ':'.
        cmp.setup.cmdline(':', {
            sources = cmp.config.sources({
                { name = 'path' }
            }, {
                { name = 'cmdline' }
            })
        }),

        formatting = {
          format = require("lspkind").cmp_format({with_text = true, menu = ({
              buffer = "[Buffer]",
              nvim_lsp = "[LSP]",
              path = "[PATH]",
              luasnip = "[LuaSnip]",
              nvim_lua = "[Lua]",
              latex_symbols = "[Latex]",
        })}),
      },

    })

    cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))
end

return setmetatable({}, {
    __call = function()
        return M.config()
    end,
})
