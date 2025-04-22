require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local opt = vim.opt

opt.hidden = true
opt.cmdheight = 1
opt.list = true
opt.listchars:append("eol:↴,tab:>-,nbsp:☠,trail:·,extends:>,precedes:<,space:.")
opt.relativenumber = true
opt.title = true
opt.titlelen = 0 -- do not shorten title
opt.titlestring = 'nvim %{expand("%:p")}'
