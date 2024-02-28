# egna aliases
alias ..='cd ..'
alias apt='sudo apt'
alias update='apt update && apt list --upgradable'
alias config='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
#alias vim='nvim'

alias ll='ls -lh'
alias la='ls -A'
alias l='ls -CF'
alias dir='ls -ogFhv --group-directories-first'

#gets the size of all current directories/content in the current directory
alias lss='du -hs * | sort -hr'

alias h='history'
alias j='jobs -l'

alias tmux='/usr/bin/tmux -2'

# create parent directory on command
alias mkdir='mkdir -pv'

# useful shortcuts/new commands
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias sudo='sudo '
alias h10='history | awk '\''{$1=""; print $0}'\'' | sort | uniq -c | sort -nr | head -n10'
alias p3='python3'
alias dps='docker ps | cut -c21-'

# network related
alias ping='ping -c 5'
alias fping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
alias hv-vpn='sudo openfortivpn vpn.hv.se:443 --username=siol0003 --trusted-cert c6267c14bc109ed66025aecdb12c7d6358932a49a7890f69441b1c1dad0f8f19'

# Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ctop="docker run --rm -ti --name ctop -v /var/run/docker.sock:/var/run/docker.sock quay.io/vektorlab/ctop:latest"
