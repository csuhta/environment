# Big, big history
export HISTSIZE=35000
export HISTFILESIZE=$HISTSIZE

# Don't store duplicate entires
export HISTCONTROL=ignoredups:erasedups

# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help"

# Append to history, don't overwrite it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Save and reload the history after each command finishes
# this lets multiple terminal windows work on the history together
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# Editor
export EDITOR="/usr/local/bin/mate -w"

# Don't clear the screen after quitting a manual page
export MANPAGER="less -X"

# Install gems in parallel, set to number of CPU cores
export BUNDLE_JOBS=$(sysctl -n hw.ncpu)
