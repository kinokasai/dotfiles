# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install

#
#vim() { `urxvt -b 2 -e vim $@ &` && exit }
PATH=~/Projects/scripts:$PATH
alias urxvt="urxvt -mod super"
alias nvim="setopt NO_CHECK_JOBS;urxvt -b 2 &; exit"
export NNTPSERVER=news.epita.fr

PATH="/home/kino/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/kino/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/kino/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/kino/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/kino/perl5"; export PERL_MM_OPT;
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
