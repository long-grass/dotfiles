execute pathogen#infect()
syntax on
filetype plugin indent on
if filereadable(expand("~/.vimrc.bundles"))
	  source ~/.vimrc.bundles
endif
