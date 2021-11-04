vim.opt.autoindent = true
vim.opt.autoread = true
vim.opt.backspace = "indent,eol,start"
vim.opt.backup = true
local backupdir = vim.fn.stdpath("data") .. "/backup"
if vim.fn.empty(vim.fn.glob(backupdir)) > 0 then
    os.execute("mkdir " .. backupdir)
end
vim.opt.backupdir = backupdir
vim.opt.bg = "dark"
vim.opt.binary = true
vim.opt.bomb = true
vim.opt.clipboard = "unnamedplus"
vim.opt.compatible = false
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.conceallevel = 0
vim.opt.cursorcolumn = false
vim.opt.cursorline = true
vim.opt.encoding = "utf-8"
vim.opt.errorbells = false
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.fileencodings = "utf-8"
vim.opt.fileformat = "unix"
vim.opt.fillchars = "vert:┃"
vim.opt.foldlevel = 0
vim.opt.formatoptions:remove("cro")
vim.opt.gdefault = true
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = "nosplit"
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.lazyredraw = true
vim.opt.linebreak = true
vim.opt.linespace = 0
vim.opt.list = true
vim.opt.mouse = "a"
vim.opt.pumblend = 10
vim.opt.pumheight = 15
vim.opt.pyxversion = 3
vim.opt.regexpengine = 1
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.report = 2
vim.opt.ruler = true
vim.opt.scrolloff = 2
vim.opt.shiftwidth = 2
vim.opt.shortmess = "atToOc"
vim.opt.showcmd = false
vim.opt.showmatch = true
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.sidescrolloff = 10
vim.opt.smartcase = true
vim.opt.softtabstop = 2
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.startofline = false
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.title = true
vim.opt.timeoutlen = 500
local undodir = vim.fn.stdpath("data") .. "/undo"
if vim.fn.empty(vim.fn.glob(undodir)) > 0 then
    os.execute("mkdir " .. undodir)
end
vim.opt.undodir = undodir
vim.opt.undofile = false
vim.opt.updatetime = 300
vim.opt.visualbell = false
vim.opt.wildmenu = true
vim.opt.wildmode = "full"
vim.opt.wildoptions = "pum"
vim.opt.winblend = 0
vim.opt.wrap = true
vim.opt.writebackup = true

vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.python_host_prog = "/usr/bin/python2"

-- require("utils.global").disable_distribution_plugins()
