# Custom $PATH

# export GEM_BIN_PATH="/usr/local/opt/ruby/bin"
export HEROKU_PATH="/usr/local/heroku/bin"
export PG_PATH="/Applications/Postgres.app/Contents/MacOS/bin"
export PYTHON_PATH="/usr/local/share/python"
export NODE_PATH="/usr/local/share/npm/bin"
export OSX_PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

export PATH="$HEROKU_PATH:$PG_PATH:$NODE_PATH:$PYTHON_PATH:$OSX_PATH"

# Activate rbenv

export RBENV_ROOT="/usr/local/var/rbenv"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
