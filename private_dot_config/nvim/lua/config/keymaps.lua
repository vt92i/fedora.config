local map = vim.keymap.set

-- ====================================
-- Insert Mode Navigation
-- ====================================
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

-- ====================================
-- Window Navigation
-- ====================================
map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

-- ====================================
-- General
-- ====================================
map("n", "<Esc>", "<cmd>noh<cr>", { desc = "general clear highlights" })
map("n", "<C-s>", "<cmd>w<cr>", { desc = "general save file" })
map("n", "<C-c>", "<cmd>%y+<cr>", { desc = "general copy whole file" })

-- ====================================
-- File Explorer (Oil)
-- ====================================
map("n", "<leader>e", function()
  require("oil").open_float()
end, { desc = "oil focus" })

map("n", "<C-n>", function()
  require("oil").toggle_float()
end, { desc = "oil toggle" })

-- ====================================
-- Buffers
-- ====================================
map("n", "<leader>bn", "<cmd>enew<cr>", { desc = "buffer new" })
map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })
map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto prev" })
map("n", "<leader>bd", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- ====================================
-- Terminal
-- ====================================
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
map({ "n", "t" }, "<leader>`", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "terminal toggleable horizontal term" })

-- ====================================
-- LSP
-- ====================================
map("n", "<leader>ld", "<cmd>Telescope lsp_definitions<cr>", { desc = "lsp go to definition" })
map("n", "<leader>lr", "<cmd>Telescope lsp_references<cr>", { desc = "lsp show references" })

-- ====================================
-- Comment
-- ====================================
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- ====================================
-- Telescope
-- ====================================
map("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", { desc = "telescope live grep" })
map("n", "<leader>tb", "<cmd>Telescope buffers<cr>", { desc = "telescope find buffers" })
map("n", "<leader>tz", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "telescope find in current buffer" })
map("n", "<leader>tm", "<cmd>Telescope marks<cr>", { desc = "telescope find marks" })
map("n", "<leader>tr", "<cmd>Telescope registers<cr>", { desc = "telescope find registers" })
map("n", "<leader>to", "<cmd>Telescope oldfiles<cr>", { desc = "telescope find oldfiles" })
map("n", "<leader>th", "<cmd>Telescope help_tags<cr>", { desc = "telescope help page" })
map("n", "<leader>tf", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map(
  "n",
  "<leader>ta",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
  { desc = "telescope find all files" }
)

-- ====================================
-- Formatting
-- ====================================
map("n", "<leader>fm", function()
  require("conform").format { async = true, lsp_fallback = true }
end, { desc = "general format file" })

-- ====================================
-- Misc
-- ====================================
map("n", "<leader>qq", "<cmd>qa!<cr>", { desc = "general quit nvim" })
map("n", "<leader>wK", "<cmd>WhichKey <cr>", { desc = "whichkey all keymaps" })
