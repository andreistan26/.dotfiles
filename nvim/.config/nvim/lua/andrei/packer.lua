vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'morhetz/gruvbox'
    use 'jremmen/vim-ripgrep'
    use 'tpope/vim-fugitive'
    use 'mbbill/undotree'
    use {'neoclide/coc.nvim', branch = 'release'}
    use 'dhruvasagar/vim-open-url'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use ({
        "L3MON4D3/LuaSnip",
        tag = "v<CurrentMajor>.*", 
        run = "make install_jsregexp"
    })
	use 'sindrets/diffview.nvim'
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
end)

