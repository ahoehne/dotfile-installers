vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- nvim-treesitter
	use {
	'nvim-treesitter/nvim-treesitter',
	run = function()
		local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		ts_update()
	end,
	}
	-- Moonfly Theme
	use {'bluz71/vim-moonfly-colors', as = 'moonfly'}
end)
