syntax on
set number
set relativenumber

if exists('+relativenumber')
  set relativenumber  "Display how far away each line is from the current one by default
    " Switch to absolute line numbers whenever Vim loses focus
    autocmd FocusLost * :set number
    autocmd FocusGained * :set relativenumber
    " Use absolute line numbers when in insert mode and relative numbers when in normal mode
    autocmd InsertEnter * :set norelativenumber | set number
    autocmd InsertLeave * :set relativenumber
else
    set number          " Show absolute line numbers
endif

set mouse+=a
set background=dark	"just in case
set laststatus=2
set cursorline

" thanks Jamie
:command! Fuck w !sudo tee %

map <F2> :set cursorline!<CR>

if &term =~ '^screen'
	" tmux knows the extended mouse mode
	set ttymouse=xterm2
endif
"Nice dark theme
colo space-vim-dark

" that dank status line stuff
set statusline=
set statusline+=\[%n]                                  "buffernr
set statusline+=\ %f\                                  "File+path 
set statusline+=\ %y\                                  "FileType
set statusline+=\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=\ %{&ff}                               "FileFormat (dos/unix..) 
"right side
set statusline+=\ %=\ %m
set statusline+=\ row:%l/%L\                       "Rownumber/total 
set statusline+=\ col:%03c\                            "Colnr
set statusline+=\ %r%w\ %P\ \                      "Modified? Readonly? Top/bot.
