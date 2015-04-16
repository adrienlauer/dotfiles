# Cygwin-only stuff. Abort if not Cygwin.
is_cygwin || return 1

mkdir -p "/cygdrive/c/Program Files/PuTTY/"

# Copy Putty
{
  pushd $DOTFILES/conf/win/putty/; setdiffA=(*); popd
  pushd "/cygdrive/c/Program Files/PuTTY/"; setdiffB=(*); popd
  setdiff
} >/dev/null

if (( ${#setdiffC[@]} > 0 )); then
  e_header "Copying PuTTY files (${#setdiffC[@]})"
  for f in "${setdiffC[@]}"; do
    e_arrow "$f"
    cp "$DOTFILES/conf/win/putty/$f" "/cygdrive/c/Program Files/PuTTY/"
  done
fi
