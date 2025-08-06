" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline
set title
set titlestring=%{fnamemodify(getcwd(),':t')}

" Register a command called SpotifyPlay which runs the command
" "!spotify_player playback play"
command! SpotifyPlay execute '!spotify_player playback play'
command! SpotifyPause execute '!spotify_player playback pause'
command! SpotifyPlayPause execute '!spotify_player playback play-pause'

command! SpotifyNext execute '!spotify_player playback next'
command! SpotifyPrevious execute '!spotify_player playback previous'

command! -nargs=1 -complete=customlist,SpotifyPlaybackComplete SpotifyPlayback execute '!spotify_player playback ' . <q-args>

function! SpotifyPlaybackComplete(A, L, P)
  if a:L =~# '\<volume\>\|\<seek\>'
    return range(0, 100)
  endif
  return ['play', 'pause', 'next', 'previous', 'volume', 'seek']
endfunction

command! -nargs=1 -complete=customlist,SpotifyPlaybackComplete SpotifyPlayback execute '!spotify_player playback ' . <q-args>
