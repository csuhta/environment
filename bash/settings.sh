# Big, big history
export HISTSIZE=10000
export HISTFILESIZE=$HISTSIZE

# Don't store duplicate entires
export HISTCONTROL=ignoredups:erasedups

# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

# Append to history, don't overwrite it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Editor
export EDITOR="/usr/local/bin/mate -w"

# Don't clear the screen after quitting a manual page
export MANPAGER="less -X"

# Install gems in parallel, set to number of CPU cores
export BUNDLE_JOBS=$(sysctl -n hw.ncpu)

# Commands that run each time a prompt is generated
export PROMPT_COMMAND="prompt-command; $PROMPT_COMMAND"
function prompt-command {
  # Save and reload the history after each command finishes
  # this lets multiple terminal windows work on the history together
  history -a;
  history -c;
  history -r;
  # Set window title to be the current directory
  echo -ne "\033]0;${PWD##*/}\007";
}


