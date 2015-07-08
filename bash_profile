#===========================#
# RYAN FLANERY BASH_PROFILE #
#===========================#

for file in ~/.{prompt,aliases,functions,flanery_identities}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

#======#
# PATH #
#======#

export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:/opt/chefdk/bin:/opt/chefdk/embedded/bin:${HOME}/.chefdk/gem/ruby/2.1.0/bin:/usr/local/munki:/opt/local/bin:/opt/local/sbin:/usr/bin:/usr/sbin:/usr/local/google-cloud-sdk/bin:/usr/local/go/bin:/usr/local/opt/coreutils/libexec/gnubin:$PATH

#=======#
# COLOR #
#=======#

export CLICOLOR=1
export LSCOLORS=ExxxxxDxBxegedabxxacad
# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

#========#
# EDITOR #
#========#

export EDITOR=/usr/local/bin/subl

#=================#
# BASH COMPLETION #
#=================#

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

## TO IGNORE ~/LIBRARY/APPLICATION\ SCRIPTS/ WHEN USING BASH COMPLETION
FIGNORE=".o:~:Application Scripts"

#============================#
# TMUXINATOR BASH COMPLETION #
#============================#

source ~/bin/tmuxinator.bash

#=======================#
# BASH HISTORY SETTINGS #
#=======================#

export HISTTIMEFORMAT='%F %T '
export HISTCONTROL=ignoredups:erasedups
export HISTFILESIZE=10000        # increase history file size (default is 500)
export HISTSIZE=${HISTFILESIZE}  # increase history size (default is 500)
shopt -s histappend # append new history items to .bash_history
export HISTIGNORE="&:[ ]*:clear"

#====================================#
# PUT CURRENT DIRECTORY IN SHELL TAB #
#====================================#

export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

#===========#
# FUNCTIONS #
#===========#

# Found @ ~/.functions

#=========#
# ALIASES #
#=========#

# Found @ ~/.aliases

#===#
# Z #
#===#

. "$HOME/bin/z.sh"

#==========================#
# VAGRANT DEFAULT PROVIDER #
#==========================#

export VAGRANT_DEFAULT_PROVIDER=vmware_fusion


#===========#
# BREW CASK #
#===========#

export HOMEBREW_CASK_OPTS="--appdir=/Applications"


#======================================#
# IDENTITY / KEY / PRIVATE INFO SOURCE #
#======================================#

#============================#
# GITHUB CHANGELOG GENERATOR #
#============================#

#====================#
# CHEF CONFIGURATION #
#====================#

# Found @ ~/.moon-identities


