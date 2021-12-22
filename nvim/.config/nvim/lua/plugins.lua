vim.cmd [[packadd packer.nvim]]

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function(use)
  use {
    {'neoclide/coc.nvim', branch = 'release'},
    'antoinemadec/coc-fzf'
  }

  use { 
    'SirVer/ultisnips',
    'tpope/vim-markdown'
  }

  use {
    'tpope/vim-fugitive',
    'airblade/vim-gitgutter',
    'fatih/vim-go'
  }

  use { 
    'tpope/vim-surround',
    'jiangmiao/auto-pairs',
    'godlygeek/tabular',
    'scrooloose/nerdcommenter',
  }

  use {
    'itchyny/lightline.vim',
    'junegunn/goyo.vim',
    'ryanoasis/vim-devicons', -- Nerd tree icon
    'morhetz/gruvbox',
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },

  }

  -- misc
  use { 
    { 
      "iamcco/markdown-preview.nvim", run = "cd app && npm install", 
      setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }
    },
    'mhinz/vim-startify', --fancy start screen
  } 

  -- toggle window features
  use {
    'junegunn/fzf', { run = './install --bin' },
    'junegunn/fzf.vim',
    'akinsho/toggleterm.nvim',
    'kdheepak/lazygit.nvim',
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}})
