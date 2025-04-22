require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<Backspace>", "<C-^>", { desc = "Alternate the last two files"})
map("n", "<leader>sg", ":%s//g<Left><Left>", { silent = false })
map("n", "U", "<C-r>", { desc = "U for redo, the opposite of u for undo" })
map("n", "c", '"_c', { desc = "change without yank" })
map("n", "C", '"_C', { desc = "change without yank" })
map("n", "<leader>d", '"_d', { desc = "delete without yank" })
map("n", "<leader>k", ":d _<CR>", { desc = "Delete line without storing in clipboard" })
map("n", "<leader>fm", ":TerraformFmt <CR>", { desc = "Terraform Format" })
map("n", "<leader>ft", ":Telescope file_browser <CR>", { desc = "Telescope file_browser" })
map("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Blame" })
map("n", "<leader>jfm", ":%!jq .<CR>", { desc = "Format JSON with jq" })
map("n", "<leader>u", ":UndotreeToggle<CR>", { desc = "Undotree Toggle" })
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")
map("n", "J", "mzJ`z", { desc = "Join line without moving the cursor" })
map("n", "cn", "*``cgn", { desc = "Change next match by pressing dot (.)" })
map("n", "cN", "*``cgN", { desc = "Change previous match by pressing dot (.)" })
map("n", "<leader>vp", "`[v`]<CR>", { desc = "Select pasted text" })

  --   ["<leader>tt"] = {
  --     function()
  --       require("base46").toggle_theme()
  --     end,
  --     "Toggle Theme",
  --   },

map("v", "<leader>d", '"_d', { silent = true })
