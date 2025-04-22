require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "terraformls", "tflint"}
vim.lsp.enable(servers)
