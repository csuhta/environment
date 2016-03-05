# Big, big history
export HISTSIZE=10000
export HISTFILESIZE=$HISTSIZE

# Don't store duplicate entires
export HISTCONTROL=ignoredups:erasedups

# Make some commands not show up in history
export HISTIGNORE="ls:ls *:cd:cd -:pwd;exit:date:* --help:heroku config*"

# Append to history, don't overwrite it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Editor, use TextMate
export EDITOR="/usr/local/bin/mate --wait"

# Don't clear the screen after quitting a manual page
export MANPAGER="less --no-init"

# Disable Spring for all Rails applcations
export DISABLE_SPRING="true"

# Configure Git commiter user
# A few things seem to keep unsetting this, so setting it here for good measure
git config --global user.name "Corey Csuhta"
git config --global user.email "git@cjcsuhta.com"

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


