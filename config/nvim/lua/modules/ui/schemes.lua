local M = {}

function M.config()
    vim.opt.termguicolors = true
    vim.cmd([[
    syntax enable
    set background=dark

    " MATERIAL
    let g:material_terminal_italics = 1
    let g:material_theme_style = "palenight-community"
    " 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker' | 'default-community' | 'palenight-community' | 'ocean-community' | 'lighter-community' | 'darker-community'

    " EVERFOREST
    let g:everforest_background = 'dark'

    " SONOKAI
    let g:sonokai_style = 'default'
    " 'default' | 'atlantis'` | 'andromeda' | 'shusia' | 'maia' | 'espresso' |
    let g:sonokai_enable_italic = 1
    let g:sonokai_disable_italic_comment = 0

    " AYU
    let ayucolor="mirage"
    " 'mirage' | 'dark' | 'light'

    " NORD
    let g:nord_cursor_line_number_background = 1
    let g:nord_bold_vertical_split_line = 1
    let g:nord_uniform_diff_background = 1
    let g:nord_italic_comments = 1

    colorscheme material
    ]])
end

return setmetatable({}, {
    __call = function()
        return M.config()
    end,
})
