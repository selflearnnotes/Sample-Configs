# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias grp='grep -nire'
# some more ls aliases
alias lh='ls -lh'
alias lt='ls -lath'
alias lr='ls -lathr'
alias la='ls -lha'
alias l='ls -CF'
alias em='emacs -nw'
alias dd='dd status=progress'
alias _='sudo'
alias mytodo='cat /home/$USER/todo.txt|lolcat'
alias _i='sudo -i'
alias shdn='sudo shutdown -h +'
alias srn='screen'
alias sls='screen -ls'
alias sad='screen -ad'
alias sxr='screen -xr'
alias srs='screen -S'
alias pbcopy=p'xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
# alias psid='ps -e | grep $1'
alias _p='proxychains'
alias _p4='proxychains4'
alias srvtorr='sudo service tor restart'
alias srvtors='sudo service tor status'
alias alive='ping -c 5 8.8.8.8'
alias life='ping -c 5 8.8.8.8'
alias dnslife='ping -c 5 google.com'
#Enable tounch pad ( checkout  output of 'xinput' )
#touch pad
#Disable touch pad shortcut SuperKey+t
alias dtouch='xinput --disable 11'
#enable touch pad ishortcut SuperKey+y
alias etouch='xinput --disable 11'
alias kvmrestart='sudo systemctl restart libvirtd.service'
alias valchk='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --log-file=valgrind-out.txt'
#alias  hib='sudo systemctl hibernate'
alias mapnw='sudo nmap -O -T4 -sTV -Pn --open --min-parallelism 64 --version-all -oA nmap_report_file-$now "$networkid" -p -'

alias xip='curl ifconfig.me'
alias xip1='curl ip-adresim.app'
alias xip2='curl icanhazip.com'
alias xip3='curl ident.me'
alias xip4='dig +short myip.opendns.com @resolver1.opendns.com'
alias myrsync='rsync -avrz --progress'
alias hib='sudo sync && sudo systemctl hibernate'
alias myspeed='speedtest-cli --simple'
alias lichess='ping -c 5 lichess.org'
alias vi="vim"
alias shred="shred -zf"
#alias python="python2"
alias wget="wget -U 'noleak'"
alias curl="curl --user-agent 'noleak'"
function build_cscope_ctags_db_func() {
    local PROJDIR=$PWD
    cd /
    echo "Searching cscope ... ctags files.."
    find $PROJDIR -name '*.c' -o -name '*.h' > $PROJDIR/cscope.files
    cd $PROJDIR
    echo "cscope db starting..."
    cscope -Rbq
    echo "cscope db done..."
    echo "ctags db starting..."
    ctags -B -L cscope.files
    echo "ctags db done..."
}
alias csbuild='time build_cscope_ctags_db_func'

#exports
export LIBVIRT_DEFAULT_URI='qemu:///system'
export LANG='en_US.UTF-8'
export now=`date +"%d%m%Y%H%M%S"`
export LD_PRELOAD=""
export EDITOR="vim"


#history
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTTIMEFORMAT="%d/%m/%y %T "
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# history settings
export HISTCONTROL=ignorespace
HISTCONTROL=ignoredups:ignorespace
HISTTIMEFORMAT="%d/%m/%y %T "

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=9999999
HISTFILESIZE=99999

## run the command "ccache -M 50G" once before the build this reduces the build speed
## to 20min from 1 hour but a permenent space for 50G is taken up
## also enable the below commands

#export USE_CCACHE=1
#export CCACHE_COMPRESS=1

NOW=$(date +"%c")
#echo $NOW | lolcat
#cat /home/$USER/todo.txt | lolcat
[ -r /home/$USER/.byobu/prompt ] && . /home/$USER/.byobu/prompt   #byobu-prompt#
