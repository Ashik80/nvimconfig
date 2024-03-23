set tabstop=2
set shiftwidth=2

command! MakeTags execute 'term ctags -R --exclude=node_modules --exclude=dist .' | q
command! EslintdFixAll execute 'silent !eslint_d --fix %' | e
command! FormatPrettier execute 'silent !npx prettier -w %' | e

nmap <leader>fe :EslintdFixAll<CR>
nmap <leader>fp :FormatPrettier<CR>
nmap <leader>sta :norm aconst [] = useState();F]
