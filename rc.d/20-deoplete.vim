" Use deoplete.
let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#filetypes = [
                \ 'react.js',
                \ 'jsx',
                \ 'javascript.jsx'
\ ]

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
