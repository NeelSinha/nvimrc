local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug("theprimeagen/vim-be-good")

Plug("tpope/vim-fugitive")
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim", { ["tag"] = "0.1.5" })
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
-- Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
-- Plug('junegunn/vim-easy-align')

-- Any valid git URL is allowed
-- Plug('https://github.com/junegunn/vim-github-dashboard.git')

-- Multiple Plug commands can be written in a single line using ; separators
-- Plug('SirVer/ultisnips'); Plug('honza/vim-snippets')

-- On-demand loading
-- Plug('preservim/nerdtree', { ['on'] = 'NERDTreeToggle' })
-- Plug('tpope/vim-fireplace', { ['for'] = 'clojure' })

-- Using a non-default branch
-- Plug('rdnetto/YCM-Generator', { ['branch'] = 'stable' })

-- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
-- Plug('fatih/vim-go', { ['tag'] = '*' })

-- Plugin options
-- Plug('nsf/gocode', { ['tag'] = 'v.20150303', ['rtp'] = 'vim' })

-- Plugin outside ~/.vim/plugged with post-update hook
-- Plug('junegunn/fzf', { ['dir'] = '~/.fzf', ['do'] = './install --all' })

-- Unmanaged plugin (manually installed and updated)
-- Plug('~/my-prototype-plugin')

-- LSP
-- the two plugins below if you want to manage the language servers from neovim
--  Plug 'williamboman/mason.nvim'
--  Plug 'williamboman/mason-lspconfig.nvim'

-- LSP Support
Plug("neovim/nvim-lspconfig")
-- Autocompletion
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("L3MON4D3/LuaSnip", { ["dependencies"] = { "rafamadriz/friendly-snippets" } })
Plug("saadparwaiz1/cmp_luasnip")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("hrsh7th/cmp-nvim-lua")
Plug("rafamadriz/friendly-snippets")

-- mason
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")

Plug("VonHeikemen/lsp-zero.nvim", { ["branch"] = "v3.x" })

--themes
Plug("navarasu/onedark.nvim")
Plug("EdenEast/nightfox.nvim")

Plug("niqodea/lasso.nvim")

Plug("numToStr/Comment.nvim")
Plug("lukas-reineke/lsp-format.nvim")

Plug("mhartington/formatter.nvim")

-- side panel tree
Plug("nvim-tree/nvim-web-devicons")
Plug("nvim-tree/nvim-tree.lua")

-- lazygit
Plug("kdheepak/lazygit.nvim")

-- commenter
Plug("numToStr/Comment.nvim")

-- linter
Plug("mfussenegger/nvim-lint")

-- surround
Plug("kylechui/nvim-surround")

-- hlchunk
Plug("shellRaining/hlchunk.nvim")

Plug("dsznajder/vscode-es7-javascript-react-snippets", { ["do"] = "yarn install --frozen-lockfile && yarn compile" })

-- merginal package
Plug("idanarye/vim-merginal")

-- highlight colors
Plug("brenoprata10/nvim-highlight-colors")

-- copilot chat
Plug("CopilotC-Nvim/CopilotChat.nvim", { ["branch"] = "canary" })

-- nvim-dap
Plug("mfussenegger/nvim-dap")

--  nvim pretty hover
-- Plug("Fildo7525/pretty_hover", { ["config"] = "require('pretty_hover').setup()" })

Plug("davidosomething/format-ts-errors.nvim")

-- oil file explorer
Plug("stevearc/oil.nvim")

-- ado pure

Plug("Willem-J-an/adopure.nvim", {
	["dependencies"] = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	["config"] = function()
		vim.g.adopure = {}
	end,
})

vim.call("plug#end")
