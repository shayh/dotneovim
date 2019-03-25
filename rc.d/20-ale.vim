" ===================================================================
" ale (Asynchronous Lint Engine) settings 
" ===================================================================

let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'

" For airline integrstion
let g:airline#extensions#ale#error_symbol = '✖:'
let g:airline#extensions#ale#warning_symbol = '⚠:'

" Use system flake8
let g:ale_python_flake8_executable = '/usr/local/bin/flake8'

let g:ale_linter_aliases = {'jsx': ['css', 'javascript'],
            \ 'tsx': 'typescript'}
let g:ale_linters = {'jsx': ['stylelint', 'eslint'],
            \ 'javascript': ['stylelint', 'eslint'],
            \        'javascript.jsx': ['stylelint', 'eslint']
            \        }
