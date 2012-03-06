# ========================================
# Bundler
# ========================================

alias be='bundle exec'
alias bi='bundle install'


# ========================================
# Rake
# ========================================

alias ber='bundle exec rake'
alias berdm='bundle exec rake db:migrate'
alias bert='bundle exec rake test'


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
# File Management
# ========================================

alias rmdir='rm -rf'


# ========================================
# General Shortcuts
# ========================================

alias docs='cd ~/Documents'
alias documents='cd ~/Documents'
alias projects='cd ~/Projects'
alias reload='source ~/.bash_profile'
