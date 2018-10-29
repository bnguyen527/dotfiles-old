" Author: Binh Q. Nguyen
" Description: Personal vimrc

" VI COMPATIBILITY {{{

" Set 'nocompatible' to ward off unexpected things that your distro might have
" made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" }}}
" APPEARANCE {{{

" Enable syntax highlighting
syntax on

" Set colorscheme to default
colorscheme default

" Set background to dark
set background=dark

" }}}
" INDENTATION {{{

" Indentation settings for using 2 spaces instead of tabs
set shiftwidth=2
set softtabstop=2  " number of spaces in tab when editing
set expandtab  " tabs are spaces

" Attempts to determine the type of a file based on its name and possibly its
" contents. Allows intelligent auto-indenting for each filetype, and for plugins
" that are filetype specific
filetype indent plugin on

" Does nothing more than copy the indentation from the previous line, when
" starting a new line. Can be useful for structured text files, or to control
" most of the indentation manually, without Vim interfering. Does not interfere
" with other indentation settings, and some file type based indentation scripts
" even enable it automatically.
set autoindent

" Automatically inserts one extra level of indentation in some cases, and works
" for C-like files. Might interfere with file type based indentation, and should
" never be used in conjunction with it.
set smartindent

"}}}
" UI LAYOUT {{{

" Display line numbers on the left
set number

" Show partial commands in the last line of the screen
set showcmd

" Show current mode
set showmode

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Highlight current line
set cursorline

" Highlight matching [{()}]
set showmatch

" }}}
" SEARCHING {{{

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Use searching as characters are entered
set incsearch

" Highlight matches (use <C-L> to temporarily turn off highlighting)
set hlsearch

"}}}
" FOLDING {{{

" Enable folding
set foldenable

" Open most folds by default
set foldlevelstart=10

" 10 nested fold max
set foldnestmax=10

" Fold based on indent level
set foldmethod=indent

" }}}
" MISCELLANEOUS {{{

" Allows reusing the same window and switching from an unsaved buffer without
" saving it first. Also allows keeping an undo history for multiple files when
" reusing the same window in this way. (Persistent undo also allows undoing in
" multiple files even in the same window, but is less efficient and is actually
" designed for keeping undo history after closing Vim entirely. Vim will
" complain if you try to quit without saving, and swap files will keep you safe
" if your computer crashes.)
set hidden

" Use backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Stop certain movements from always going to the first character of a line
set nostartofline

" Enable visual autocomplete for command menu
set wildmenu

" Instead of failing a command because of unsaved changes, raise a dialogue
" asking to save changed files
set confirm

" Refrain from updating the display while executing macros
set lazyredraw

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Resets the terminal code for the visual bell. If visualbell is set, and this
" line is also included, Vim will neither flash nor beep. If visualbell is
" unset, this does nothing.
set t_vb=

" Enable use of the mouse for all modes
set mouse=a

" Enable <F2> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F2>

" }}}
" MAPPINGS {{{
" LINE SHORTCUTS {{{

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
nnoremap Y y$

" Move vertically by visual line
nnoremap j gj
nnoremap k gk

" Highlight last inserted text
nnoremap gV `[v`]

" Open/close folds
nnoremap <space> za

" Map <C-L> (redraw screen) to also turn off search highlighting until the next
" search
nnoremap <C-L> :nohlsearch<CR><C-L>

" }}}
" LEADER SHORTCUTS {{{

" Set comma as leader
let mapleader=","

" Saves session. To reopen session, use vim -S. Mapped to ,s, as "super save."
nnoremap <leader>s :mksession<CR>

" Edits bashrc. (Mnemonic for the key sequence is 'e'dit 'b'ashrc).
nnoremap <silent> <leader>eb :vsplit ~/.bashrc<cr>

" Edits this file (vimrc). (Mnemonic for the key sequence is 'e'dit 'v'imrc).
nnoremap <silent> <leader>ev :vsplit $MYVIMRC<cr>

" Sources this file (vimrc) (and load key bindings). (Mnemonic for the key
" sequence is 's'ource 'v'imrc).
nnoremap <silent> <leader>sv :source $MYVIMRC<cr>

" }}}
" }}}
" ORGANIZATION {{{

" Tell Vim to check just the final line of the file for a modeline
set modelines=1

" }}}

" Folds sections by marker rather than indentation. Closes every fold by
" default.
" vim:foldmethod=marker:foldlevel=0
