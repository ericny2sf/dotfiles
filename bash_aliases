alias reload='source ~/.bash_profile'
alias r='source ~/.bash_profile'
alias c='clear'
alias q='exit'
alias s='start' # figures out how to start project server

alias h='history'
alias hsearch='history | grep --color=auto'
alias hstats='history | awk '\''{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}'\'' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n10'

alias localip="ipconfig getifaddr en1"
alias remoteip="curl -s http://checkip.dyndns.com/ | sed 's/[^0-9\.]//g'"

alias aliases="alias | sed 's/alias //g' | sed 's/=/ = /g'"

alias paths='echo -e ${PATH//:/\\n}' # pretty print all paths


# ========================================
# Git
# ========================================

alias g='git'
alias gb='git branch'
alias gci='git commit'
alias gco='git checkout'
alias gfo='git fetch origin'
alias gs='git status'
alias guci='git reset --soft HEAD^' # undo last commit


# ========================================
# File Management
# ========================================

alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# http://blogs.adobe.com/cantrell/archives/2012/03/stop-using-rm-on-the-command-line-before-its-too-late.html
# alias rm="echo 'Use trash instead: trash my-file.txt'"


# ========================================
# Directory Navigation
# ========================================

alias opendir='open -R .'
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'
alias home='cd ~'
alias docs='cd ~/Documents'
alias documents='cd ~/Documents'
alias p='cd ~/Projects'
alias projects='cd ~/Projects'
alias dotfiles='cd ~/Projects/dotfiles'

# ========================================
# Ruby
# ========================================

alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias bo='bundle outdated'
alias bopen='bundle open' # bundle open GEM_NAME
alias ber='bundle exec rake'
alias bert='bundle exec rake test'
alias rt='bundle exec ruby -Itest'
alias fs='foreman start'


# ========================================
# Rails
# ========================================

alias rs='ber log:clear && s'
alias berc='bundle exec rails console'
alias berdm='bundle exec rake db:migrate'
alias rl='tail -f log/development.log'


# ========================================
# Heroku
# ========================================

alias hrc='heroku run rails console'
alias hrr='heroku run rake'
alias hrdm='heroku run rake db:migrate'
alias hp='heroku ps'
alias hps='heroku ps:scale'


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
#   coda ~/Documents/Notes.txt
#   iawriter ~/Documents/Notes.txt
# 
alias coda='open -b com.panic.Coda2'
alias iawriter='open -b jp.informationarchitects.WriterForMacOSX'
