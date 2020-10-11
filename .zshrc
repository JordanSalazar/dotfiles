# Correctly display UTF-8 with combining characters.
setopt combiningchars

alias vim='/usr/local/bin/nvim'
alias v='vim'

ZSH=$HOME/.oh-my-zsh
ZSH_THEME="ys"

# reload zsh config
alias zshconfig="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"

plugins=(git npm composer gitfast history history-substring-search colorize tmux)

source $ZSH/oh-my-zsh.sh

# source <(antibody init)

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
alias tmux='tmux -u'

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
alias steam-wine='wine ~/.wine/drive_c/Program\ Files/Steam/Steam.exe -no-cef-sandbox'
alias wget-deps='wget -E -H -k -K -p'
alias steam='STEAM_RUNTIME=0 steam'
alias pt="rg --hidden"
alias sshk="cat ~/.ssh/id_rsa.pub | pbcopy"
alias rn='react-native'

function flac-to-mp3 {
    for a in ./*.flac; do
        ffmpeg -i "$a" -qscale:a 0 "${a[@]/%flac/mp3}"
    done
}

export GEM_HOME=~/.gem
export GEM_PATH=~/.gem

export APPLICATION_ENV="development"

export EDITOR='vim'
export PATH="$HOME/.config/composer/vendor/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:$GEM_HOME/bin:$HOME/.node_modules/bin:$HOME/Library/Android/sdk/platform-tools:$HOME/Library/Android/sdk/tools:/bin:./vendor/bin:./node_modules/.bin:/usr/sbin/:/Library/TeX/texbin"

export CDPATH='.:/Users/jrs:/Users/jrs/www/'
export COWPATH="$HOME/.cowsay"
export ZDOTDIR='/home/jrs'

export ANDROID_HOME=/Users/jrs/Library/Android/sdk
export npm_config_prefix=~/.node_modules

export WINEARCH=win32

eval "$(gdircolors ~/.dir_colors)"

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# fortune -o | cowsay -f 'skeleton.cow'

#BASE16_SHELL="$HOME/.config/base16-shell/base16-monokai.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

alias mysql=$(echo -e 'mysql --prompt="\x1B[31m\\u\x1B[34m@\x1B[32m\\h\x1B[0m:\x1B[36m\\d>\x1B[0m "')

PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH:/usr/local/texlive/2020basic/bin/x86_64-darwin"
