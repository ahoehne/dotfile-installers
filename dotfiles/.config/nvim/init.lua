-- luacheck: globals vim
vim.api.nvim_command("set nu rnu")
require("plugins")

require 'nvim-treesitter.configs'.setup {
	ensure_installed = {
		-- Server Side
		"php", "phpdoc", "sql", "python",
		-- Web
		"html", "javascript", "jsdoc", "json", "css",
		"typescript",
		-- Web Frameworks
		"vue",
		-- Templates
		"twig",
		-- Containers
		"dockerfile", "yaml",
		-- Shell Scripting
		"bash", "fish",
		-- defaults should be installed
		"c", "lua", "vim", "vimdoc", "query"
	},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true
	},
}

vim.cmd [[colorscheme moonfly]]
