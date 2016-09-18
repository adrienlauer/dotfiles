if [ ! -d ~/.zprezto ]; then
  git clone --recursive https://github.com/adrienlauer/prezto.git ~/.zprezto
fi

# OSX-only stuff. Abort if not OSX.
is_osx || return 1

GIT_SSH="/cygdrive/c/Program Files/PuTTY/plink.exe"
