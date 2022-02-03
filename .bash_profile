source "$HOME/.jc/.bash_profile"

export PATH="$PATH:$HOME/.jc/bin"

#git info prompt
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
export testdev="172.18.70.199, 172.18.70.124, 172.18.70.153, 172.18.90.79, 172.18.100.75, 172.18.80.193"
export testctls="172.18.70.199, 172.18.70.124, 172.18.70.153"
export testctl="172.18.70.124"
export testwrks="172.18.90.79, 172.18.100.75, 172.18.80.193"
export testwrk="172.18.100.75"
export minionctl="172.17.21.126"
export minionwrk="172.17.23.232"
export minionwrks="172.17.22.190,172.17.23.232,172.17.23.195"
alias connctl="tmux-cssh -u ubuntu -i ~/secrets/jb.pem -sc $minionctl"

alias conndevctl="tmux-cssh -tl even-vertical -i ~/secrets/jb.pem -u ubuntu -cs test-dev-ctls"
alias conndevwrkrs="tmux-cssh -tl even-vertical -i ~/secrets/jb.pem -u ubuntu -cs test-dev-wrkrs"
alias conndevall="tmux-cssh -tl even-vertical -i ~/secrets/jb.pem -u ubuntu -cs test-dev-all"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jc_io/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/jc_io/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jc_io/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/jc_io/Downloads/google-cloud-sdk/completion.bash.inc'; fi
