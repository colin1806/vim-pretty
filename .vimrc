syntax on
filetype plugin indent on
set tags+=~/.vim/tags
set nocompatible                 "some plugin need it
set hlsearch                     "highlight the search
set incsearch                    "move to fit position after one char input
set nobackup                     "won't produce the backup file when save file
set nowritebackup                "won't produce the backup file when save file
set noswapfile                   "won't use swapfile
set hidden                       "can open other file when a file is not saved
set ruler                        "show ruler at the right bottom
set nowrap                       "disable auto newline
set laststatus=2                 "status bar will show anytime
set updatetime=500               "tagbar response 800ms
set showmatch matchtime=0        "show the other bracket
set wmnu wildmode=longest:full   "when in command mode can use auto complete same as bash
set expandtab 
set tabstop=4                    "expand the tab to 4 space
set si 
set ai 
set ci 
set cinkeys-=0# 
set cinoptions=g0,:0   
set shiftwidth=4                 "make the indent 4 length
set softtabstop=4                "backspace can del 4 space
set lcs=eol:$,tab:\|\ 
set whichwrap+=<,>,[,]
set backspace=indent,eol,start   "better backspace
set fileencodings=utf-8,cp936    "auto test the file is uft-8 or cp936
set fileformats=unix,dos,mac     "line feed different in different mode
set completeopt=menuone,longest
set pastetoggle=<F4>
set complete=.,w,b,k
set insertmode
set selection=exclusive

highlight TagbarHighlight guifg=Green ctermfg=Green
let NERDTreeHighlightCursorline = 0
let NERDTreeDirArrows=0
let NERDTreeWinSize=40
let NERDRemoveExtraSpaces=0
let g:tagbar_sort=0
let g:tagbar_compact=1
let g:tagbar_foldlevel=1
let g:tagbar_iconchars=['+', '-']
let OmniCpp_SelectFirstItem = 2
let OmniCpp_ShowPrototypeInAbbr = 1 
let OmniCpp_MayCompleteScope = 1
let g:bufExplorerDefaultHelp = 0
let g:bufExplorerShowRelativePath = 1
let g:bufExplorerDisableDefaultKeyMapping = 1
let g:winManagerWindowLayout='NERDTree|BufExplorer'
let g:winManagerWidth=40
let g:persistentBehaviour = 0
let g:NERDTree_title = "[NERDTree]"
let g:go_highlight_array_whitespace_error = 0
let g:go_highlight_chan_whitespace_error = 0
let g:go_highlight_extra_types = 0
let g:go_highlight_space_tab_error = 0
let g:go_highlight_trailing_whitespace_error = 0

nnoremap <silent> <c-left> :wincmd h<cr>:set insertmode<cr>
inoremap <silent> <c-left> <esc>:wincmd h<cr>
nnoremap <silent> <c-right> :wincmd l<cr>:set insertmode<cr>
inoremap <silent> <c-right> <esc>:wincmd l<cr>
nnoremap <silent> <c-up> :wincmd k<cr>
nnoremap <silent> <c-down> :wincmd j<cr>
vnoremap <s-tab> <gv
vnoremap <tab> >gv
vnoremap <silent> , :call NERDComment(1, "alignLeft")<cr>
vnoremap <silent> . :call NERDComment(1, "uncomment")<cr>
vnoremap <bs> d
vnoremap <c-h> d
vnoremap <S-Up> <Up>
vnoremap <S-Down> <Down>
vnoremap <S-Left> <Left>
vnoremap <S-Right> <Right>
vnoremap <S-pageup> <pageup>
vnoremap <S-pagedown> <pagedown>
vnoremap <up> <esc><up>
vnoremap <down> <esc><down>
vnoremap <left> <esc><left>
vnoremap <right> <esc><right>
vnoremap <home> <esc><home>
vnoremap <end> <esc><end>
inoremap <S-Up> <c-o>v<Up>
inoremap <S-Down> <c-o>v<Down>
inoremap <S-Left> <c-o>v<Left>
inoremap <S-Right> <c-o>v<Right>
inoremap <S-pageup> <c-o>v<pageup>
inoremap <S-pagedown> <c-o>v<pagedown>
inoremap <s-home> <c-o>v<home>
inoremap <s-end> <c-o>v<end>
inoremap <c-z> <c-o>u
inoremap <c-y> <c-o><c-r>
inoremap <c-v> <c-\><c-o>P
inoremap <c-a> <c-o>gg<c-o>VG
vnoremap <c-c> y
vnoremap <c-x> d
inoremap <c-o> <esc><c-o>:set insertmode<cr>
inoremap <c-t> <c-o>:FindInFolder <c-r>=expand("<cword>")<cr>
inoremap <c-r> <c-o>:Find <c-r>=expand("<cword>")<cr>
inoremap <c-w> <C-\><c-o>dB
inoremap <silent> <F2> <esc>:WMToggle<cr>:TagbarToggle<cr><c-w>l:set insertmode<cr>
inoremap <F5> <esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q<cr><cr>:cs kill cscope.out<cr>:!cscope -Rb<cr><cr>:cs add cscope.out<cr>i
inoremap <F6> <c-o>:set list!<cr>
inoremap <F7> <c-o>g<c-]>
inoremap <F8> <c-o>:cs find s <c-r>=expand("<cword>")<cr><cr>
inoremap <F9> <c-o>:wa<cr>
inoremap <F10> <c-o>:qa!<cr>
noremap <F10> :qa!<cr>
inoremap <F11> <c-x><c-o>
inoremap <F12> <c-o>:

if has("cscope")
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
endif

function! NERDTree_Start()
    exe 'q'
    exe 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

command! -nargs=+ FindInFolder execute '!grep --color --exclude=tags --exclude=cscope.out -nR . -e <args>' | noh
command! -nargs=+ Find execute ':!grep --color -n % -e <args>' | noh

autocmd BufWinEnter * setlocal insertmode
