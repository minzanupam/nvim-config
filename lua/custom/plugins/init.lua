return {
	-- auto closing parenthesise, brackets, etc
	{ 'windwp/nvim-autopairs', opts = {} },

	-- lsp extestions
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },

	-- for colorscheme
	{
		'ThemerCorp/themer.lua',
		opts = {
			colorscheme = "gruvbox",
			transparent = true,
			term_colors = true,

			styles = {
				constant = { style = "bold" },
				constantBuiltIn = { style = "bold" },
				keyword = { style = "italic" },
				keywordBuiltIn = { style = "italic" },
			},
			plugins = {
				treesitter = true,
				indentline = true,
				barbar = true,
				bufferline = true,
				cmp = true,
				gitsigns = true,
				lsp = true,
				telescope = true,
			},
			remaps = {
				palette = {
					gruvbox = {
						["dimmed"] = { ["subtle"] = "#7c6f64" },
						["bg"] = { ["base"] = "#1d2021" },
					},
					tokyodark = {
						["bg"] = { ["selected"] = "#32334a" },
					},
				},
				highlights = {
					gruvbox = {
						base = {
							ColorColumn = { bg = "#3c3836" },
						},
					},
					nord = {
						base = {
							ColorColumn = { bg = "#3b4252" }
						},
					},
					tokyodark = {
						base = {
							ColorColumn = { bg = "#32334a" }
						},
					},
					catppuccin = {
						base = {
							ColorColumn = { bg = "#32334a" }
						},
					},
				},
			},
		}
	},

	-- undo tree
	{ 'mbbill/undotree' },

	-- treesitter playground to view the treesitter AST
	{ "nvim-treesitter/playground" },

	-- improve rust integration nvim
	{
		'simrat39/rust-tools.nvim',
		opts = {}
	},

	{ 'ThePrimeagen/harpoon', opts = {} },

	-- to format code
	{ 'sbdchd/neoformat' },

	{ 'mattn/emmet-vim' },

	{
		"ray-x/lsp_signature.nvim",
		event = "VeryLazy",
		opts = {},
		config = function(_, opts) require 'lsp_signature'.setup(opts) end
	},

	{ 'dhruvasagar/vim-table-mode' },

	{ 'joerdav/templ.vim' },
	{ 'mustache/vim-mustache-handlebars' },

}
