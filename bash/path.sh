# Custom $PATH

export USR_PATH="/usr/local/bin:/usr/local/sbin"
export PG_PATH="/Applications/Postgres.app/Contents/Versions/latest/bin"
export NODE_PATH="/usr/local/share/npm/bin"
export OSX_PATH="/usr/bin:/usr/sbin:/bin:/sbin"
export GPG_PATH="/usr/local/MacGPG2/bin"
export NVM_DIR="$HOME/.nvm"

export PATH="$PG_PATH:$GPG_PATH:$USR_PATH:$NODE_PATH:$OSX_PATH"
export CDPATH=".:~:~/Projects"

# Activate chruby and the .ruby-version auto-switcher

if [ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]; then
  source /usr/local/opt/chruby/share/chruby/chruby.sh
fi

if [ -f /usr/local/opt/chruby/share/chruby/auto.sh ]; then
  source /usr/local/opt/chruby/share/chruby/auto.sh
fi

# Activate nvm and the .nvmrc version switcher

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"
