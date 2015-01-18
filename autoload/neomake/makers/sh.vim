" vim: ts=4 sw=4 et

function! neomake#makers#sh#EnabledMakers()
    return ['shellcheck']
endfunction

function! neomake#makers#sh#shellcheck()
    return {
        \ 'args': ['-fgcc'],
        \ 'errorformat':
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %tote: %m'
        \ }
endfunction
