# Cygwin-only stuff. Abort if not Cygwin.
is_cygwin || return 1

# Copy fonts
{
  pushd $DOTFILES/conf/win/fonts/; setdiffA=(*); popd
  pushd /cygdrive/c/Windows/Fonts; setdiffB=(*); popd
  setdiff
} >/dev/null

if (( ${#setdiffC[@]} > 0 )); then
  e_header "Copying fonts (${#setdiffC[@]})"
  for f in "${setdiffC[@]}"; do
    e_arrow "$f"
    cp "$DOTFILES/conf/win/fonts/$f" /cygdrive/c/Windows/Fonts
  done
fi

$DOTFILES/conf/win/FontReg.exe