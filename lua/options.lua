require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local opt = vim.opt
local cmd = vim.cmd

opt.hidden = true
opt.cmdheight = 1
opt.list = true
opt.listchars:append("eol:↴,tab:>-,nbsp:☠,trail:·,extends:>,precedes:<,space:.")
opt.relativenumber = true
opt.title = true
opt.titlelen = 0 -- do not shorten title
opt.titlestring = 'nvim %{expand("%:p")}'
opt.path:append '**'

-- Terraform syntax 
cmd([[silent! autocmd! filetypedetect BufRead,BufNewFile *.tf]])
cmd([[autocmd BufRead,BufNewFile *.hcl set filetype=hcl]])
cmd([[autocmd BufRead,BufNewFile .terraformrc,terraform.rc set filetype=hcl]])
cmd([[autocmd BufRead,BufNewFile *.tf,*.tfvars set filetype=terraform]])
cmd([[autocmd BufRead,BufNewFile *.tfstate,*.tfstate.backup set filetype=json]])

-- TF format on save
cmd([[let g:terraform_fmt_on_save=1]])
cmd([[let g:terraform_align=1]])
