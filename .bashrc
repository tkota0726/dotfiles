#githubブランチ表示
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
#githubブランチ表示
source ~/git-prompt.sh
source ~/git-completion.bash

# command aliases                    
alias co='open -a "Visual Studio Code"'
alias kill-emacs="emacsclient -e '(kill-emacs)'"
alias ga='git add -u'
alias te='open -a "Sublime Text"'
alias ex='open -a "Microsoft Excel"'
alias e='/usr/local/bin/emacs -nw'
alias s='source'
alias l='ls -la'
alias at='open -a "Atom"'
alias weather='curl wttr.in/Tokyo'
alias env27='source ~/env27/bin/activate'
alias env36='source ~/env36/bin/activate'
alias bye='deactivate'
alias ctags="`brew --prefix`/bin/ctags"
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
PS1="\[\033[36m\]\h:\W \u\$\[\033[0m\]|\$(__git_ps1)|\$"

#opensslエラー防止
export PATH="/usr/local/Cellar/openssl/1.0.2k/bin:$PATH"

# brew用設定
export PATH=/usr/local/bin:$PATH
## create emacs env file
perl -wle \
    'do { print qq/(setenv "$_" "$ENV{$_}")/ if exists $ENV{$_} } for @ARGV' \
    PATH > ~/.emacs.d/shellenv.el
