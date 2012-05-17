alias reload='source ~/.bash_profile'
alias q='exit'

alias a='compgen -a' # lists all defined aliases

alias h='history'

alias localip="ipconfig getifaddr en1"
alias remoteip="curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'"

alias g='git'
alias gb='git branch'
alias gfo='git fetch origin'
alias gs='git status'
alias guc='git reset --soft HEAD^' # undo last commit

alias path='echo -e ${PATH//:/\\n}' # pretty print all paths


# ========================================
# File Management
# ========================================

alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# http://blogs.adobe.com/cantrell/archives/2012/03/stop-using-rm-on-the-command-line-before-its-too-late.html
alias rm="echo 'Use trash instead: trash my-file.txt'"


# ========================================
# Directory Navigation
# ========================================

alias ..='cd ..'
alias ~='cd ~'
alias home='cd ~'
alias docs='cd ~/Documents'
alias documents='cd ~/Documents'
alias projects='cd ~/Projects'


# ========================================
# Ruby
# ========================================

alias be='bundle exec'
alias bi='bundle install'
alias ber='bundle exec rake'
alias berdm='bundle exec rake db:migrate'
alias bert='bundle exec rake test'
alias fs='foreman start'


# ========================================
# Rails
# ========================================

alias berc='bundle exec rails console'
alias berct='bundle exec rails console test'
alias berr='bundle exec rails runner'
alias bers='bundle exec rails server'


# ========================================
# Quicklook
# ========================================

# Examples
# 
#   ql -p '~/Music/file.mp3'
#   # => The -p option generates a preview, as if you'd tapped the Spacebar in Finder.
# 
#   ql -p '~/Music/file.mp3' '~/Documents/Notes.txt'
#   # => You can specify multiple files and the window will allow you to switch between files.
# 
#   ql -t '~/Music/file.mp3'
#   # => The -t option generates thumbnails, like in Coverflow or Info For.
# 
alias ql='qlmanage -p "$@" >& /dev/null'


# ========================================
# Applications
# ========================================

# Examples
# 
#   iawriter ~/Documents/Notes.txt
# 
alias iawriter='open -b jp.informationarchitects.WriterForMacOSX'
