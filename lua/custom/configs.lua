vim.api.nvim_create_autocmd('BufReadPost', {
  callback = function()
    require('rust-tools').inlay_hints.enable()
  end,
  group = nil,
  pattern = '*.rs',
})

vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file)
vim.keymap.set("n", "<leader>hl", require("harpoon.ui").toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() require("harpoon.ui").nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() require("harpoon.ui").nav_file(2) end)
vim.keymap.set("n", "<C-l>", function() require("harpoon.ui").nav_file(3) end)
vim.keymap.set("n", "<leader>ht", function() require("harpoon.term").gotoTerminal(1) end)

local group_code_format = vim.api.nvim_create_augroup('group_code_format', {})
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { "*.go", "*.rs" },
  group = group_code_format,
  command = ":Neoformat",
})

vim.keymap.set("n", "<C-j>", function() vim.cmd("cnext") end)
vim.keymap.set("n", "<C-k>", function() vim.cmd("cprev") end)

vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_cursor_trail_size = 0
vim.o.guifont = "Fira Code:h12"

require 'lspconfig'.gdscript.setup {}
