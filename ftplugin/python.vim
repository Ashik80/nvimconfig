set tabstop=4
set shiftwidth=4

command! MakeTags execute 'term ctags -R .' | q
