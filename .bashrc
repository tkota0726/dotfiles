#githubブランチ表示

#git-branch名を表示
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
export PS1='\h\[\033[00m\]:\W\[\033[31m\]$(__git_ps1 [%s])\[\033[00m\]\$ '
GIT_PS1_SHOWDIRTYSTATE=true
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
function precmd() {
  PROMPT="\h@\u:\W\$(parse_git_branch) \$ "
}
function proml {
  PS1="\h@\u:\W\$(parse_git_branch) \$ "
}
PS1='\[\e[1;36m\]\d \[\e[1;32m\]\t \[\e[1;33m\]\u@\[\e[1;35m\]\h:\w\n\$\[\e[0;31m\]$(__git_ps1 [%s])\[\033[00m\]\$'
#opensslエラー防止
export PATH=/usr/local/Cellar/openssl/1.0.2k/bin:$PATH

# command aliases                    
alias co='open -a "Visual Studio Code"'
alias kill-emacs="emacsclient -e '(kill-emacs)'"
alias ga='git add -u'
alias te='open -a "Sublime Text"'
alias ex='open -a "Microsoft Excel"'
alias e='/usr/local/bin/emacs -nw'
alias s='source'
alias l='ls -la -G'
alias at='open -a "Atom"'
alias weather='curl wttr.in/Tokyo'
alias env27='source ~/env27/bin/activate'
alias env36='source ~/env36/bin/activate'
alias bye='deactivate'
alias ctags="`brew --prefix`/bin/ctags"
alias rm='rm -i'
alias c='c++3'
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

# brew用設定
export PATH=/usr/local/bin:$PATH
## create emacs env file
perl -wle \
    'do { print qq/(setenv "$_" "$ENV{$_}")/ if exists $ENV{$_} } for @ARGV' \
    PATH > ~/.emacs.d/shellenv.el
##pyenv設定
PYENV_ROOT=~/.pyenv
export PATH=$PATH:$PYENV_ROOT/bin
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
##文字化け防止用
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

