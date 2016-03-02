# Custom $PATH

export USR_PATH="/usr/local/bin:/usr/local/sbin"
export HEROKU_PATH="/usr/local/heroku/bin"
export PG_PATH="/Applications/Postgres.app/Contents/Versions/latest/bin"
export NODE_PATH="/usr/local/share/npm/bin"
export OSX_PATH="/usr/bin:/usr/sbin:/bin:/sbin"

export PATH="$USR_PATH:$HEROKU_PATH:$PG_PATH:$NODE_PATH:$OSX_PATH"

# Activate chruby and the .ruby-version auto-switcher

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
