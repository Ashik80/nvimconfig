lua << EOF
require("gruvbox").setup({
    contrast = "hard"
})
EOF

colorscheme gruvbox

hi link Function GruvboxYellow
hi MatchParen gui=bold guibg=NONE guifg=#d3869b ctermbg=NONE ctermfg=175 cterm=bold
hi Search guifg=#fabd2f guibg=#504945 gui=bold ctermbg=242 ctermfg=214 cterm=bold
