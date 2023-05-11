# general
alias nv='nvim'
alias ll='ls -al --color=auto'
alias cf='cd $HOME/.config'
alias cv='cd $HOME/.config/nvim'
alias vc='cd $HOME/.config/nvim && nv'

# git
alias gi='git init'
alias gaa='git add .'
alias gcm='git commit -m'
alias gbm='git branch -M main'
alias grao='git remote add origin' 
alias gc='git clone'
alias gpom='git push -u origin main'
alias gs='git status'

# php artisan
# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/laravel/laravel.plugin.zsh
alias art='php artisan'
alias serve='php artisan serve'

alias pam='php artisan migrate'
alias pamf='php artisan migrate:fresh'
alias pamfs='php artisan migrate:fresh --seed'
alias pamr='php artisan migrate:rollback'
alias pads='php artisan db:seed'

alias pamm='php artisan make:model'
alias pamc='php artisan make:controller'
alias pams='php artisan make:seeder'
alias pamR='php artisan make:request'
alias pamfa='php artisan make:factory'
alias pamp='php artisan make:policy'

alias pacac='php artisan cache:clear'
alias pacoc='php artisan config:clear'
alias pavic='php artisan view:clear'
alias paroc='php artisan route:clear'

alias parl='php artisan route:list'