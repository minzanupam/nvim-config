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

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
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
--   pattern = { "*.js", "*.svelte", "*.ts", "*.tsx" },
--   group = group_code_format,
--   command = ":Neoformat",
-- })

vim.g.neovide_scroll_animation_length = 0
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_cursor_trail_size = 0
vim.o.guifont = "Fira Code:h12"

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
require 'lspconfig'.gdscript.setup { capabilities = capabilities }
require 'lspconfig'.zls.setup { capabilities = capabilities }

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

-- vim.keymap.set('n', '<leader>xs', '<Plug>RestNvim')
-- vim.keymap.set('n', '<c-y><c-,>', '<Plug>emmet-expand-abbr')
--
require 'treesitter-context'.setup {
  enable = false,           -- Enable this plugin (Can be enabled/disabled later via commands)
  max_lines = 2,            -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0,    -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'inner',     -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',          -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = '*',
  zindex = 20,     -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
