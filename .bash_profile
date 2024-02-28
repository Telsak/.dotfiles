alias dcrun='docker-compose -f /opt/docker-compose.yml '
alias dclogs='docker-compose -f /opt/docker-compose.yml logs -tf --tail="50" '
alias editle='sudo vi /opt/appdata/letsencrypt/nginx/site-confs/default'

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH="$HOME/.cargo/bin:$HOME/.bin:$PATH:$HOME/.local/bin"
