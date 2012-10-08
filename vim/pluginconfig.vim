" ZenCoding
let g:user_zen_expandabbr_key='<C-j>'

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"imap <expr><TAB> <SID>my_tab_function()
"imap <expr><CR> <SID>my_cr_function()
"inoremap <expr><CR> pumvisible() ? neocomplcache#sources#snippets_complete#expandable() ? <Plug>neocomplcache_snippets_expand : "/<CR>" : "/<CR>"
function! s:my_cr_function()
    " if there is popup menu
    if pumvisible()
        let l:i=neocomplcache#sources#snippets_complete#expandable()
        " if cursor text is snippets trigger
        if l:i == 1 || l:i == 3
            return "\<Plug>(neocomplcache_snippets_expand)" 
        else
            return neocomplcache#smart_close_popup()
        endif
    else
        return "\<CR>"
    endif
    let l:i=neocomplcache#sources#snippets_complete#expandable()
endfunction
function! s:my_tab_function()
    " if there is popup menu
    if pumvisible()
        return "\<C-n>"
    endif
    let l:i=neocomplcache#sources#snippets_complete#expandable()
    " if cursor text is snippets trigger
    if l:i == 2
        return "\<Plug>(neocomplcache_snippets_jump)" 
    else
        return "\<TAB>"
    endif
endfunction

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

"if !exists('g:neocomplcache_omni_patterns')
  "let g:neocomplcache_omni_patterns = {}
"endif
"let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.c = '[^. *\t]\%(\.\|->\)'
"let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

" SuperTab
"let g:SuperTabDefultCompletionType='context'
"let g:SuperTabDefaultCompletionType = '<C-X><C-O>'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" Keybindings for plugin toggle
nmap <F5> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

" SimpylFold
let g:SimpylFold_docstring_preview = 1 "enable previewing of docstrings in the fold text
