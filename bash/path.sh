# Custom $PATH

if [[ (-e /usr/local/bin/gem && -e /usr/local/bin/brew) ]]; then
  export GEM_BIN_PATH=`/usr/local/bin/brew info ruby|grep /bin|tr -d ' '`
else
  export GEM_BIN_PATH=""
fi

export HEROKU_PATH="/usr/local/heroku/bin"
export PG_PATH="/Applications/Postgres.app/Contents/MacOS/bin"
export PYTHON_PATH="/usr/local/share/python"
export NODE_PATH="/usr/local/share/npm/bin"
export OSX_PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin"

export PATH="$HEROKU_PATH:$PG_PATH:$GEM_BIN_PATH:$NODE_PATH:$PYTHON_PATH:$OSX_PATH"
