# alias
alias cls='clear'
alias his='history'
alias hisg='history | grep'
alias ..='cd ..'
alias ...='cd ../..'
alias rmd='rm -Rf'
alias cpd='cp -Rf'
alias gvim='gvim -f'

# function
function ext() {
    if [ -f $1 ] ; then
       case $1 in
       *.7z) 7z x $1 ;;
       *.bz2) bunzip2 $1 ;;
       *.gz) gunzip $1 ;;
       *.rar) rar x $1 ;;
       *.tar) tar xfs $1 ;;
       *.tar.bz2) tar xfs $1 ;;
       *.tar.gz) tar xfs $1 ;;
       *.tbz2) tar xfs $1 ;;
       *.tgz) tar xfs $1 ;;
       *.Z) uncompress $1 ;;
       *.zip) unzip $1 ;;
       *) echo "Error: extraction impossible for '$1'..." ;;
       esac
    else
       echo "Error: '$1' is not a file!"
    fi
}

function cleanup() {
    find $1 -name "*.bak" | xargs rm
    find $1 -name "*.BAK" | xargs rm
}

function mytags() {
    local TAG_LANG=""
    local OFILE=""
    case $1 in
    c)
        TAG_LANG=c,c++
        OFILE=ccpp.tags
        ;;
    java)
        TAG_LANG=java
        OFILE=java.tags
        ;;
    make)
        TAG_LANG=make
        OFILE=make.tags
        ;;
    sh)
        TAG_LANG=sh
        OFILE=sh.tags
        ;;
    pl)
        TAG_LANG=perl
        OFILE=perl.tags
        ;;
    py)
        TAG_LANG=python
        OFILE=python.tags
        ;;
    *)
        echo "Error: Unknown language ${1}"
        return
        ;;
    esac

    if [ -e "./.${OFILE}" ] ; then
        echo "Cleanup old tag files"
        rm -Rf ./.${OFILE}
    fi
    ctags -R --languages=${TAG_LANG} -o ./.${OFILE}
}
