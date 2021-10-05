local M = {}

function M.config()
    vim.opt.termguicolors = true
    vim.cmd([[
    syntax enable
    let g:material_terminal_italics = 1
    let g:material_theme_style = "palenight-community" 
    " 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'
    colorscheme material
    ]])
end

return setmetatable({}, {
    __call = function()
        return M.config()
    end,
})
