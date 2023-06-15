require("piper.plugins.gitsigns")
require("piper.plugins.autopairs")
require("piper.plugins.lsp.null-ls")
require("piper.plugins-setup")
require("piper.core.options")
require("piper.core.keymaps")
require("piper.core.colorscheme")
require("piper.plugins.comment")
require("piper.plugins.nvim-tree")
require("piper.plugins.lualine")
require("piper.plugins.telescope")
require("piper.plugins.nvim-cmp")
require("piper.plugins.lsp.mason")
require("piper.plugins.lsp.lspsaga")
require("piper.plugins.lsp.lspconfig")
require("piper.plugins.treesitter")
require("piper.plugins.lspsignature")

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.zimbu = {
	install_info = {
		url = "~/projects/tree-sitter-zimbu", -- local path or git repo
		files = { "src/parser.c" },
		-- optional entries:
		branch = "main", -- default branch in case of git repo if different from master
		generate_requires_npm = false, -- if stand-alone parser without npm dependencies
		requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
	},
	filetype = "zu", -- if filetype does not match the parser name
}

-- local ft_to_parser = require("nvim-treesitter.parsers").filetype_to_parsername
-- ft_to_parser.someft = "python" -- the someft filetype will use the python parser and queries.
-- ft_to_parser.someft = "json"
-- ft_to_parser.someft = "vim"
-- ft_to_parser.someft = "help"
-- ft_to_parser.someft = "dockerfile"
-- ft_to_parser.someft = "html"
-- ft_to_parser.someft = "css"
-- ft_to_parser.someft = "graphql"
-- ft_to_parser.someft = "gitignore"
-- ft_to_parser.someft = "svelte"
