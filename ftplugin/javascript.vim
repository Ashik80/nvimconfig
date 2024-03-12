set tabstop=2
set shiftwidth=2

command! MakeTags execute 'term ctags -R --exclude=node_modules --exclude=dist .' | q
command! EslintFixAll execute 'silent !eslint_d --fix %' | redraw! | e
command! FormatPrettier execute 'silent !npx prettier -w %' | redraw! | e

nmap <leader>fe :EslintFixAll<CR>
nmap <leader>fp :FormatPrettier<CR>
nmap <leader>sta :norm aconst [] = useState();F]
