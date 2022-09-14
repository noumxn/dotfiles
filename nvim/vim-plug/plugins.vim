" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

        " Better syntax support
        Plug 'sheerun/vim-polyglot'
        " File Explorer
        Plug 'scrooloose/NERDTree'
        " Autopairing for brackets
        Plug 'jiangmiao/auto-pairs'
        " Rainbow brackets
        Plug 'luochen1990/rainbow' 
        " Themes
        Plug 'morhetz/gruvbox'
        Plug 'joshdick/onedark.vim'
        " Intellisense
        Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Plug 'preservim/nerdtree'
        " Plug 'ctrlpvim/ctrlp.vim'
        " Plug 'neoclide/coc.nvim', {'branch': 'release'}
        " Plug 'nvim-treesitter/nvim-treesitter'
        
call plug#end()
