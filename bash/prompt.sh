# -----------------------------------------------------------------------------------
# Custom Prompt
# -----------------------------------------------------------------------------------
# Don't use \e[ syntax for colors: it fucks up linebreaks. Use tput.
# http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
#
# Handy tput commands:
#   tput bold           Bold effect
#   tput rev            Display inverse colors
#   tput setaf {CODE}   Set foreground color, see color {CODE} below
#   tput setab {CODE}   Set background color, see color {CODE} below
#   tput sgr0           Reset everything (use at end)
#
# tput color codes:
#   0  Black
#   1  Red
#   2  Green
#   3  Yellow
#   4  Blue
#   5  Magenta
#   6  Cyan
#   7  White
# -----------------------------------------------------------------------------------

# ROBCO INDUSTRIES
# SET TERMINAL/INQUIRE
export PS1="\n\[$(tput setaf 1)\]🌠  \[$(tput sgr0)\]"
