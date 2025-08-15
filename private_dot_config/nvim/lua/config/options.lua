local opt = vim.opt
local o = vim.o
local g = vim.g

-- ====================================
-- UI Settings
-- ====================================
o.cursorline = true
o.cursorlineopt = "number"
o.laststatus = 3
o.mouse = "a"
o.mousemodel = "extend"
o.number = true
o.numberwidth = 2
o.relativenumber = true
o.ruler = false
o.showmode = false
o.signcolumn = "yes"
o.termguicolors = true
opt.fillchars = { eob = " " }
opt.shortmess:append "sI"
opt.whichwrap:append "<>[]hl"

-- ====================================
-- Indentation & Tabs
-- ====================================
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.softtabstop = 2
o.tabstop = 2

-- ====================================
-- Search Behavior
-- ====================================
o.ignorecase = true
o.smartcase = true

-- ====================================
-- Clipboard & Undo
-- ====================================
o.clipboard = "unnamedplus"
o.undofile = true

-- ====================================
-- Splits & Windows
-- ====================================
o.splitbelow = true
o.splitright = true

-- ====================================
-- Performance
-- ====================================
o.timeoutlen = 400
o.updatetime = 250

-- ====================================
-- Providers (disable unused)
-- ====================================
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0

-- ====================================
-- Mason Path Integration
-- ====================================
vim.env.PATH = vim.fn.stdpath "data" .. "/mason/bin:" .. vim.env.PATH
