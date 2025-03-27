return {
	-- auto closing parenthesise, brackets, etc
	{ 'windwp/nvim-autopairs' },

	-- lsp extestions
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },

	-- for colorscheme
	-- {
	-- 	'ThemerCorp/themer.lua',
	-- 	opts = {
	-- 		colorscheme = 'gruvbox',
	-- 		transparent = false,
	-- 		term_colors = true,
	--
	-- 		styles = {
	-- 			constant = { style = 'bold' },
	-- 			constantBuiltIn = { style = 'bold' },
	-- 			keyword = { style = 'italic' },
	-- 			keywordBuiltIn = { style = 'italic' },
	-- 		},
	-- 		plugins = {
	-- 			treesitter = true,
	-- 			indentline = true,
	-- 			barbar = true,
	-- 			bufferline = true,
	-- 			cmp = true,
	-- 			gitsigns = true,
	-- 			lsp = true,
	-- 			telescope = true,
	-- 		},
	-- 		remaps = {
	-- 			palette = {
	-- 				gruvbox = {
	-- 					['dimmed'] = { ['subtle'] = '#7c6f64' },
	-- 					-- ["bg"] = { ["base"] = "#1d2021" },
	-- 				},
	-- 				tokyodark = {
	-- 					['bg'] = { ['selected'] = '#32334a' },
	-- 				},
	-- 			},
	-- 			highlights = {
	-- 				gruvbox = {
	-- 					base = {
	-- 						ColorColumn = { bg = '#3c3836' },
	-- 					},
	-- 				},
	-- 				nord = {
	-- 					base = {
	-- 						ColorColumn = { bg = '#3b4252' },
	-- 					},
	-- 				},
	-- 				tokyodark = {
	-- 					base = {
	-- 						ColorColumn = { bg = '#32334a' },
	-- 					},
	-- 				},
	-- 				tokyonight = {
	-- 					base = {
	-- 						ColorColumn = { bg = '#3b4252' },
	-- 					},
	-- 				},
	-- 				catppuccin = {
	-- 					base = {
	-- 						ColorColumn = { bg = '#32334a' },
	-- 					},
	-- 				},
	-- 			},
	-- 		},
	-- 	},
	-- },

	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme gruvbox]])
			-- vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
		end,
		opts = {}
	},

	-- undo tree
	{ 'mbbill/undotree' },

	-- treesitter playground to view the treesitter AST
	{ 'nvim-treesitter/playground' },

	-- improve rust integration nvim
	-- {
	-- 	'simrat39/rust-tools.nvim',
	-- 	opts = {},
	-- },

	-- { 'ThePrimeagen/harpoon', opts = {} },

	{
		'ThePrimeagen/harpoon',
		branch = 'harpoon2',
		dependencies = { 'nvim-lua/plenary.nvim' },
	},

	-- to format code
	{
		'sbdchd/neoformat',
		config = function()
			vim.cmd("let g:neoformat_enabled_javascript = ['prettier']")
		end
	},

	-- { 'mattn/emmet-vim' },

	{ 'dhruvasagar/vim-table-mode' },

	-- { 'joerdav/templ.vim' },
	-- { 'mustache/vim-mustache-handlebars' },
	{
		'stevearc/aerial.nvim',
		opts = {},
		-- Optional dependencies
		dependencies = {
			'nvim-treesitter/nvim-treesitter',
			'nvim-tree/nvim-web-devicons',
		},
	},

	{ 'nvim-treesitter/nvim-treesitter-context' },

	-- {
	-- 	'folke/zen-mode.nvim',
	-- 	opts = {},
	-- },

	{
		'folke/trouble.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		opts = {},
	},

	-- { 'vuciv/vim-bujo' },

	{
		"ray-x/go.nvim",
		dependencies = { -- optional packages
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("go").setup()
		end,
		event = { "CmdlineEnter" },
		ft = { "go", 'gomod' },
		build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
	},

	{
		'jghauser/follow-md-links.nvim',
		config = function()
			-- vim.keymap.set('n', '<bs>', ':edit #<cr>', { silent = true })
		end,
	}
}
