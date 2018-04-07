# Correctly display UTF-8 with combining characters.
setopt combiningchars

alias vim='/usr/bin/nvim'

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"

# reload zsh config
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"

plugins=(git arch bower npm composer gitfast rvm history history-substring-search terminalapp laravel5 laravel4 colorize zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration
## Git aliases
alias ga='git add'
alias gc='git commit -m '
alias gac='git add -A && git commit -m '
alias gb='git branch'
alias gco='git checkout'
alias gst='git status'
alias gd='git diff'
alias gps='git push origin'
alias ggpsp='grunt build && git push origin production'
alias gpsm='git push origin master'
alias gplm='git pull origin master'
alias gpl='git pull origin'
alias glog='git log --graph --all --format=format:"%x1b[36m%h%C(reset) - %C(bold green)(%cr)%C(reset) %C(white)%s%C(reset) %C(bold white)‚Äî %cn%C(reset)%C(bold yellow)%d%C(reset)" --abbrev-commit --date=relative'
alias grss='git reset --soft HEAD~1'
alias grsh='git reset --hard HEAD~1'

## Laravel aliases
alias art='php artisan'
alias {art-key,art-keygen}='php artisan key:generate'
alias {artg-con,artg-controller}='php artisan generate:controller'
alias {artg-mod,artg-model}='php artisan generate:model'
alias artg-seed='php artisan generate:seed'
alias artg-view='php artisan generate:view'
alias {artg-mig,artg-migration}='php artisan generate:migration'
alias {art-mmig,art-makemigration}='php artisan migrate:make'
alias {art-mig,art-migrate}='php artisan migrate'
alias art-seed='php artisan db:seed'

## Composer aliases
alias comp='composer'
alias {comp-create,compc}='composer create-project'
alias {comp-req,compr}='composer require'
alias {comp-up,compu}='composer update'
alias comp-laravel='composer create-project laravel/laravel'

## Bower
alias b='bower'
alias bower='bower --save'
alias {b-inst,b-install}='bower install --save'
alias {b-unin,b-uninstall}='bower uninstall --save'
alias {b-reg,b-register}='bower register'

## tmux
alias tmuxgo='tmux new-session \; split-window \; split-window \; select-layout main-vertical \; resize-pane -t:.0 -x 125'
alias tsp='tmux select-pane '
alias tsfp='tmux select-pane -t:.0'
alias tkill='tmux kill-server'

## Taskwarrior
alias t='task'

## Misc
alias ls='ls --color -h --group-directories-first'
alias mv='mv -v'
alias cp='cp -Rv'
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias chrome='open -a "Google Chrome"'
alias ff='open -a "Firefox"'
alias safari='open -a "Safari"'
alias 777='chmod -R 777'
alias dns-flush='dscacheutil -flushcache'
alias show-hidden='defaults write com.apple.finder AppleShowAllFiles TRUE'
alias hide-hidden='defaults write com.apple.finder AppleShowAllFiles FALSE'
alias show-full-path='defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES'
alias keta='ssh ketamine@keta.ip'
alias httpdconfig='sudo vim /private/etc/apache2/httpd.conf'
alias vimconfig='vim ~/.config/nvim/rc'
alias tobottom='TOLASTLINE=$(tput cup "$LINES");PS1="\[$TOLASTLINE\]$PS1"'
alias gulp-persist='while true; do gulp; sleep 3; done;'
alias flac-to-m4a='for f in *.flac; do ffmpeg -i "$f"  -vf "crop=((in_w/2)*2):((in_h/2)*2)" -c:a alac "${f%.flac}.m4a"; done'
alias phpconfig='vim /usr/local/etc/php/5.6/php.ini'
alias open='xdg-open'
alias steam-wine='wine ~/.wine/drive_c/Program\ Files/Steam/Steam.exe -no-cef-sandbox'
alias wget-deps='wget -E -H -k -K -p'
alias steam='STEAM_RUNTIME=0 steam'
alias ssh-evt-staging='ssh evt@37.97.188.195'
alias ssh-tfs='ssh 247redesign@95.85.50.134'
alias ssh-hardnews='ssh hardnews@95.170.95.39'

function flac-to-mp3 {
    for a in ./*.flac; do
        ffmpeg -i "$a" -qscale:a 0 "${a[@]/%flac/mp3}"
    done
}

export GEM_HOME=~/.gem
export GEM_PATH=~/.gem

export APPLICATION_ENV="development"

export EDITOR='vim'
export PATH="$HOME/.config/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/jrs/.composer/vendor/bin:$GEM_HOME/bin:$HOME/.node_modules/bin:/opt/android-sdk/tools"

export CDPATH='.:/home/jrs:/home/jrs/www'
export COWPATH="$HOME/.cowsay"
export ZDOTDIR='/home/jrs'

export ANDROID_HOME=/opt/android-sdk
export npm_config_prefix=~/.node_modules

export WINEARCH=win32

eval "$(dircolors ~/.dir_colors)"

fortune -o | cowsay -f 'skeleton.cow'

#BASE16_SHELL="$HOME/.config/base16-shell/base16-monokai.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

eval "$(thefuck --alias)"

alias mysql=$(echo -e 'mysql --prompt="\x1B[31m\\u\x1B[34m@\x1B[32m\\h\x1B[0m:\x1B[36m\\d>\x1B[0m "')

task list

