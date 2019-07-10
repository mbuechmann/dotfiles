function fish_greeting
    fortune -s | cowsay -W 80
end
funcsave fish_greeting

if test -e ./config.local.fish
    source ./config.local.fish
end

set -x GO11MODULE on
set -x GOPATH ~/go

set -x PATH $PATH:$GOPATH/bin

alias c="code ."
alias f="fortune -s | cowsay"
alias l="ls -1"
