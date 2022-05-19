vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function(use)
  use 'wbthomason/packer.nvim'

  use { -- coc
    {'neoclide/coc.nvim', branch = 'release'},
    'antoinemadec/coc-fzf',
  }

  use { -- auto completions
    'honza/vim-snippets',
    'SirVer/ultisnips',
    'tpope/vim-markdown'
  }


  use { -- syntax
    -- 'bfrg/vim-cpp-modern',
    'octol/vim-cpp-enhanced-highlight',
    'othree/yajs.vim', -- js syntax
    'HerringtonDarkholme/yats.vim', -- ts
    'yuezk/vim-js',
    'maxmellon/vim-jsx-pretty'
  }

  use { -- utils
    {'junegunn/fzf',  run = './install --bin' },
    'junegunn/fzf.vim',
    'akinsho/toggleterm.nvim',
    'kdheepak/lazygit.nvim',
    'tpope/vim-fugitive',
    'airblade/vim-gitgutter',
    'easymotion/vim-easymotion',
    'tpope/vim-surround',
    'jiangmiao/auto-pairs',
    'godlygeek/tabular',
    'scrooloose/nerdcommenter',
    "iamcco/markdown-preview.nvim",
  }

  use { -- styles
    'itchyny/lightline.vim',
    'junegunn/goyo.vim',
    'ryanoasis/vim-devicons', -- Nerd tree icon
    'morhetz/gruvbox',
    'mhinz/vim-startify', --fancy start screen
    { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
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
