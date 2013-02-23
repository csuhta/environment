# -----------------------------------------------------------------------------
# RAILS
# -----------------------------------------------------------------------------

# Dump the current heroku production database to a file
function hdump () {
  heroku pgbackups:capture --expire
  wget -O ~/Downloads/latest.dump `heroku pgbackups:url`
  echo "Written to ~/Downloads/latest.dump"
}

# Remove the configured bundle from this Rails project folder
function localbundle-implode () {
  rm -rf ./vendor/bundle
  rm -rf ./bundle
  rm Gemfile.lock
}

# Create a Rails migration and open it
function migration () {
  rails generate migration $1
  mate db/migrate/`ls -t db/migrate/ | head -1`
}

# -----------------------------------------------------------------------------
# DJANGO
# -----------------------------------------------------------------------------

# Activate the venv, but give me a manly prompt
function venv () {
  source venv/bin/activate
  export PS1="\n\[$(tput setaf 2)\]VIRTUAL ⚡ \[$(tput sgr0)\]"
}

# Run the Django dev server
function runserver () {
  manage runserver 0.0.0.0:8080
}

# -----------------------------------------------------------------------------
# OSX/UNIX
# -----------------------------------------------------------------------------

# Change to personal ~/Projects folder
function p () {
  cd $HOME/Projects
  pwd
}

# Create and cd to a directory
function mcd () {
  mkdir -p "$1" && cd "$1";
}

# Touch and open a file
function tmate () {
  touch "$1" && mate "$1";
}

# Print your LAN IPv4 address
function localip () {
  (awk '{print $2}' <(ifconfig en0 | grep 'inet '));
}

# Print your LAN IPv6 address
function localipv6 () {
  (awk '{print $2}' <(ifconfig en0 | grep 'inet6 '));
}

# Generate some URL/MySQL safe random characters for keys/passwords
function random () {
  ruby -e "require 'securerandom'; puts SecureRandom.urlsafe_base64(100)"
}

# Extract nearly any command-line archive
function extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)  tar xjf $1     ;;
      *.tar.gz)   tar xzf $1     ;;
      *.bz2)      bunzip2 $1     ;;
      *.rar)      unrar e $1     ;;
      *.gz)       gunzip $1      ;;
      *.tar)      tar xf $1      ;;
      *.tbz2)     tar xjf $1     ;;
      *.tgz)      tar xzf $1     ;;
      *.zip)      unzip $1       ;;
      *.Z)        uncompress $1  ;;
      *.7z)       7z x $1        ;;
      *)          echo "'$1' cannot be extracted via extract()" ;;
      esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Show a list of computers currently listening to your iTunes library
function ituners () {
  lsof | grep iTunes | grep TCP
}

# Flush OS X's DNS caches
function flushdns () {
  sudo dscacheutil -flushcache
  sudo killall -HUP mDNSResponder
}

# Removes duplicates from the "Open With" menu in OS X
# http://bit.ly/eF8UHG
function fix-launch-services () {
  /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user
  killall Finder
}

# Print your public IPv4 address
function publicip () {
  curl -s http://whatismyip.akamai.com/;
  printf "\n";
}

# Open a man page in Preview
function pman () {
  man -t "${1}" | open -f -a /Applications/Preview.app
}

# Open a man page in TextMate
function tman () {
  MANWIDTH=160 MANPAGER='col -bx' man $@ | mate
}

# Quit an OS X application from the command line
function quit () {
  for app in $*; do
    osascript -e 'quit app "'$app'"'
  done
}

# Relaunch an OS X application from the command line
function relaunch () {
  for app in $*; do
    osascript -e 'quit app "'$app'"';
    sleep 2;
    open -a $app
  done
}

# App Zapper an app
function zap () {
  open -a AppZapper /Applications/"${1}".app
}
