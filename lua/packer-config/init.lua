return require("packer").startup(function()
	use("windwp/nvim-autopairs")
	use("nvim-lua/plenary.nvim")
	use("Pocco81/TrueZen.nvim")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
	use("lervag/vimtex")
	use("nvim-telescope/telescope.nvim")
	use("rcarriga/nvim-notify")
	use("fladson/vim-kitty")
	use("akinsho/toggleterm.nvim")
	use("startup-nvim/startup.nvim")
	use("EdenEast/nightfox.nvim") --> nightfox colorsceme for neovim
	use("sainnhe/gruvbox-material")
	use("romgrk/barbar.nvim")
	use({ "rose-pine/neovim", as = "rose-pine" }) -- Statusline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	--> treesitter & treesitter modules/plugins
	use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }) --> treesitter
	use("nvim-treesitter/nvim-treesitter-textobjects") --> textobjects
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("p00f/nvim-ts-rainbow")
	use("nvim-treesitter/playground")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	--> lsp
	use({ "williamboman/mason.nvim" })
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig") --> Collection of configurations for built-in LSP client
	use("jose-elias-alvarez/null-ls.nvim") --> inject lsp diagnistocs, formattings, code actions, and more ...
	use("tami5/lspsaga.nvim") --> icons for LSP diagnostics
	use("onsails/lspkind-nvim") --> vscode-like pictograms for neovim lsp completion items
	use("hrsh7th/nvim-cmp") --> Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") --> LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") --> Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") --> Snippets plugin
end)
