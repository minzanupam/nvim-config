vim.api.nvim_create_autocmd('BufReadPost', {
  callback = function()
    require('rust-tools').inlay_hints.enable()
  end,
  group = nil,
  pattern = '*.rs',
})

-- harpoon 2
local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>ha", function() harpoon:list():append() end)
vim.keymap.set("n", "<leader>hl", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
-- vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
-- vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

-- local group_code_format = vim.api.nvim_create_augroup('group_code_format', {})
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = { "*.go", "*.rs", "*.js", "*.svelte", "*.ts" },
--   group = group_code_format,
--   command = ":Neoformat",
-- })

vim.keymap.set("n", "<C-j>", function() vim.cmd("cnext") end)
vim.keymap.set("n", "<C-k>", function() vim.cmd("cprev") end)

vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_cursor_trail_size = 0
vim.o.guifont = "Fira Code:h12"

require 'lspconfig'.gdscript.setup {}

require 'lsp_signature'.setup({})

require("aerial").setup({
  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    -- vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    -- vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
})
-- You probably also want to set a keymap to toggle aerial
-- vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
--
vim.cmd([[nnoremap <esc><esc> :silent! nohls<cr>]])
