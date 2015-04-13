# Common
export GREP_COLOR=31
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# OSX-only
if is_osx; then
  export PATH=/usr/local/bin:$PATH
  export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
fi
