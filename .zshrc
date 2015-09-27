# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' list-colors ''
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

setopt extended_glob

fpath=(/usr/local/share/zsh-completions $fpath)

export EDITOR=vim

#ls colors
export CLICOLOR=true
export LSCOLORS='Gxfxcxdxdxegedabagacad'

# GIT_PS1_SHOWDIRTYSTATE=true
# GIT_PS1_SHOWUPSTREAM="auto"
# GIT_PS1_SHOWCOLORHINTS=true
# GIT_PS1_SHOWUNTRACKEDFILES=true
# # PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
# # PROMPT_COMMAND='__git_ps1 "\W" "\\\$ "'
# PS1=$'\e[0;31m$ \e[0m'

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}

source $HOME/.zsh/zsh-git-prompt/zshrc.sh
RPROMPT=$'$(git_super_status)'
PROMPT='%B%~%b $ '

alias remaster="git checkout master && git fetch origin && git reset --hard origin/master"
alias restaging="git checkout staging && git fetch origin && git reset --hard origin/staging"
alias shipit="restaging && remaster && git merge staging && git push origin master"
alias gitpurge="git fetch origin && git remote prune origin && git checkout master && git branch -r --merged | grep -v master | grep -v staging | sed -e 's/origin\//:/' | xargs git push origin && git reset --hard origin/master && git branch --merged | grep -v master | grep -v staging | xargs git branch -d"
