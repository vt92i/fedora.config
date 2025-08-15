---@diagnostic disable: different-requires
require "nvchad.mappings"

local map = vim.keymap.set
local nomap = vim.keymap.del

-- map("n", ";", ":", { desc = "Enter command mode" })

map("n", "<leader>e", function()
  require("oil").open_float()
end, { desc = "oil focus" })

map("n", "<C-n>", function()
  require("oil").toggle_float()
end, { desc = "oil toggle" })

map("n", "<leader>bn", "<cmd>enew<cr>", { desc = "buffer new" })
map("n", "<leader>bd", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

map({ "n", "t" }, "<A-,>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

map("n", "<leader>ld", "<cmd>Telescope lsp_definitions<cr>", { desc = "LSP Go to definition" })
map("n", "<leader>lr", "<cmd>Telescope lsp_references<cr>", { desc = "LSP Show references" })

map("n", "<leader>tg", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>tb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>tz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>tm", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "<leader>tr", "<cmd>Telescope registers<CR>", { desc = "telescope find registers" })
map("n", "<leader>to", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>th", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })

map("n", "<leader>tf", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map(
  "n",
  "<leader>ta",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "telescope find all files" }
)

map("n", "<leader>fm", function()
  require("conform").format { async = true, lsp_fallback = true }
end, { desc = "general format file" })

map("n", "<leader>qq", "<cmd>qa!<cr>", { desc = "general quit nvim" })

nomap("n", "<leader>b")
nomap("n", "<leader>x")
nomap("n", "<leader>n")
nomap("n", "<leader>rn")
nomap("n", "<leader>th")
nomap("n", "<leader>gt")
nomap("n", "<leader>cm")
nomap("n", "<leader>wk")
nomap("n", "<leader>pt")
nomap("n", "<leader>h")
nomap("n", "<leader>v")
nomap("n", "<A-h>")
nomap("n", "<A-v>")
nomap("n", "<A-i>")
nomap("n", "<leader>fw")
nomap("n", "<leader>fb")
nomap("n", "<leader>fh")
nomap("n", "<leader>ma")
nomap("n", "<leader>fo")
nomap("n", "<leader>fz")
nomap("n", "<leader>ff")
nomap("n", "<leader>fa")
nomap("n", "<leader>ds")
