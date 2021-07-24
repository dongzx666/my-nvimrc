set encoding=UTF-8 "编码
set guifont=DroidSansMono\ Nerd\ Font\ 11
set autoread " 当前文件在 Vim 外被修改且未在 Vim 里面重新载入的话，则自动重新读取
set number "显示行号
set cursorline  " 高亮当前行光标
set ruler " 行号和列号
set nowrap " 设置超过窗口宽度的行不自动回绕显示
set hidden " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set nobackup " 设置覆盖文件时不保留备份文件
set nowritebackup
set clipboard^=unnamed,unnamedplus
set expandtab "tab转space
set smarttab " 插入Tab时使用shiftwidth
set shiftwidth=2 " 设置执行Vim普通模式下的缩进操作
set tabstop=2 " tab缩进空格个数
set list " 显示制表符和行尾结束符
set listchars=tab:▸\ ,trail:• " 用▸表示tab，•表示空格
set autoindent " 自动缩进
set smartindent " 新增行时进行”智能”缩进，主要用于 C 语言一族
set cmdheight=2 " 设定命令行的行数为2
set showcmd " 在屏幕最后一行显示 (部分的) 命令
set showmode " 在插入、替换和可视模式里，在最后一行提供消息
set hlsearch " 将搜索结果高亮显示
set incsearch " 在查找域中输入的文本，预览第一处匹配目标；每当新输入一个字符时，Vim 会即时更新预览内容
set ignorecase " 忽略大小写
set smartcase " 如果包含大写则区分大小写，如果只是小写不区分
set wildmenu " 底部命令行按tab可以补全
set updatetime=100 " 设置每100个字符保存一次
set updatecount=6000 " 设置每60秒保存一次
set shortmess+=c " don't give ins-completion-menu messages?
set mouse=a " 启用鼠标
syntax on " 自动语法高亮
set nrformats= " <C-a>和<C-x>十进制
" set foldmethod=indent
" set foldlevel=99

filetype on " 文件类型检测功能
filetype plugin on " 加载文件类型插件功能
filetype indent on "  为不同类型的文件定义不同的缩进格式

nmap <C-\> gcc
vmap <C-\> gc
noremap <silent> <C-j> 5j
noremap <silent> <C-k> 5k
noremap <silent> <C-h> b
noremap <silent> <C-l> w
nnoremap H ^
nnoremap L $
nnoremap U <C-r>
nnoremap ; :
noremap <silent> n nzz
noremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap z i<BS><Esc>l
noremap qq <ESC>:q!<CR>
noremap <C-s> :w<CR>
" noremap <C-S> :%s/\s\+$//<CR>:let @/=''<CR>
" noremap <C-w> :wq<CR>
nnoremap <CR> o<Esc>
nnoremap <F5> :cn<CR>
nnoremap <F6> :cp<CR>
nnoremap <F7> :cclose<CR>
inoremap <C-L> <Right>
inoremap <C-H> <Left>
inoremap <C-J> <Down>
inoremap <C-K> <Up>
inoremap <C-D>w <Esc>ldwi
inoremap <C-D>l <Esc>ddi
inoremap <C-a> <Home>
inoremap <C-e> <End>
tnoremap <Esc> <C-\><C-n>
vnoremap < <gv
vnoremap > >gv

cmap w!! w !sudo tee >/dev/null %

let mapleader = " "
noremap <LEADER>w :bd<CR>
noremap <LEADER><CR> :nohlsearch<CR>
noremap <LEADER>sc :set spell!<CR>
noremap <LEADER>/ :term<CR>
noremap <LEADER>\ :g/^\s*$/d<CR>

call plug#begin('~/.vim/plugged')
Plug 'metalelf0/supertab'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'

Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

Plug 'preservim/tagbar'
Plug 'ludovicchabant/vim-gutentags'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/DoxygenToolkit.vim'
" Plug 'Chiel92/vim-autoformat'
Plug 'luochen1990/rainbow'
Plug 'voldikss/vim-translator'
Plug 'easymotion/vim-easymotion'

Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
" translator
nmap <silent> <Leader>t <Plug>TranslateW
vmap <silent> <Leader>t <Plug>TranslateWV
" easymotion
nmap <Leader>ss <Plug>(easymotion-s2)
" markdown-preview
let g:mkdp_browser = 'firefox'
let g:mkdp_refresh_slow = 1
let g:mkdp_auto_close = 0
let g:mkdp_refresh_slow = 1
nmap <silent> <F9> <Plug>MarkdownPreview
" vim-commentary, gcap注释一段，gcu撤销注释操作
autocmd FileType c,cpp set commentstring=//\ %s
" ranbow
let g:rainbow_active = 1
" vim-scheme
syntax enable
set background=dark
colorscheme gruvbox
" colorscheme dracula
let g:solarized_termcolors=256
"vim-airline
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab
" coc-clangd
noremap <F4> :CocCommand clangd.switchSourceHeader<CR>
" coc-snippets
let g:snips_author = "fengyu"
" imap <C-e> <Plug>(coc-snippets-expand)
" coc-nvim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
noremap <F3> :call CocAction('format')<CR>
" NERDTree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" fzf
nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }
" ale
" nnoremap <LEADER>[ :ALEPrevious<CR>
" nnoremap <LEADER>] :ALENext<CR>
set fenc=
"let g:ale_sign_error = '✗'
"let g:ale_sign_warning = '⚡'
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
let g:ale_linters = {
      \   'cpp': ['g++'],
      \   'c': ['gcc'],
      \}
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
nmap <silent> <LEADER>[ <Plug>(ale_previous_wrap)
nmap <silent> <LEADER>] <Plug>(ale_next_wrap)
nmap <Leader>d :ALEDetail<CR>
" tagbar
set tags=./.tags;,.tags
nmap <F8> :TagbarToggle<CR>
" vim-gutentags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" vim-cpp-highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_template_highlight = 1
" supertab
let g:SuperTabDefaultCompletionType = '<C-n>'
" ultisnips
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" function-compile
noremap r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "!time ./%<"
  elseif &filetype == 'cpp'
    set splitright
    exec "!g++ -std=c++11 % -Wall -o %<"
    :vsp
    :res -15
    :term ./%<
  endif
endfunc
" search todo
command! Todo vimgrep /todo/ /fixme/ % | copen

" cpp-class-generate
 function! Class(ClassName)                                                                                              
    "==================  editing header file =====================                                                       
     let header = a:ClassName.".h"                                                                                                                                                                                                                                                                                        
     :vsp %:h/.h                                                                                                                                                                                                                             
     call append(0,"#ifndef ".toupper(a:ClassName)."_H")                                                                 
     call append(1,"#define ".toupper(a:ClassName)."_H")                                                           
     call append(2," ")                                                                                                  
     call append(3,"class ".a:ClassName )                                                                                
     call append(4, "{")                                                                                                 
     call append(5, "   public:")                                                                                        
     call append(6, "      ".a:ClassName."();")                                                                          
     call append(7, "      virtual ~".a:ClassName."();")                                                                 
     call append(8, "   protected:")                                                                                     
     call append(9, "   private:")                                                                                       
     call append(10, "};")                                                                                               
     call append(11,"#endif // ".toupper(a:ClassName)."_H")                                                              
     :execute 'write' header                                                                                             
   "================== editing source file ========================                                                      
     let src    = a:ClassName.".cpp"                                                                                     
     :vsp %:h/.cpp                                                                                                                                                                                                                     
     call append(0,"#include ".a:ClassName.".h")                                                                          
     call append(1," ")                                                                                                   
     call append(2,a:ClassName."::".a:ClassName."()")                                                                           
     call append(3,"{")                                                                                                   
     call append(4,"//ctor ")                                                                                             
     call append(5,"}")                                                                                                   
     call append(6," ")                                                                                                   
     call append(7," ")                                                                                                   
     call append(8,a:ClassName."::~".a:ClassName."()")                                                                         
     call append(9,"{")                                                                                                   
     call append(10,"//dtor ")                                                                                            
     call append(11,"}")                                                                                                  
     :execute 'write' src
endfunction
command! -nargs=1 Class call Class(<f-args>)
