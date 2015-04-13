# Cygwin-only stuff
is_cygwin || return 1

packages=(
  tmux
  weechat
)

pact install $packages
