# Common
export GREP_COLOR=31
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Cygwin-only
if is_cygwin; then
  export GIT_SSH="/cygdrive/c/Program Files/PuTTY/plink.exe"
fi

# OSX-only
if is_osx; then
  export PATH=/usr/local/bin:$PATH
  export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
fi
