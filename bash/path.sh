# Custom $PATH

export USR_PATH="/usr/local/bin:/usr/local/sbin"
export PG_PATH="/Applications/Postgres.app/Contents/Versions/latest/bin"
export NODE_PATH="/usr/local/share/npm/bin"
export OSX_PATH="/usr/bin:/usr/sbin:/bin:/sbin"
export GPG_PATH="/usr/local/MacGPG2/bin"

export PATH="$PG_PATH:$GPG_PATH:$USR_PATH:$NODE_PATH:$OSX_PATH"
export CDPATH=".:~:~/Projects"

# Activate chruby and the .ruby-version auto-switcher

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
