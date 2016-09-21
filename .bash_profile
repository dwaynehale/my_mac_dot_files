## Exports
export M2_HOME=/Users/dwayne.hale/Documents/maven-3.3.9
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

## CLI exports
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

## aliases
#alias ls='ls -GFh'
function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
 }
 function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
 }
function show_hidden_files() {
 	defaults write com.apple.finder AppleShowAllFiles YES
	killall Finder
 }
function hide_shown_files() {
	defaults write com.apple.finder AppleShowAllFiles NO
	killall Finder
}
