# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/anthonymedina/.oh-my-zsh

ZSH_THEME="robbyrussell"


# PLUGINS
export NVM_LAZY_LOAD=true

plugins=(
  cra
  git
  zsh-nvm
  zsh-syntax-highlighting
  z
)

source $ZSH/oh-my-zsh.sh

# Compile with Clang, then execute
function ccrun () {
  c_file=$1
  if [ "$#" -eq "2" ]; then
    target_file="./$2"
  else
    target_file="./${c_file/.c}"
  fi
  cc -o "${target_file}" "${c_file}"
  "${target_file}"
}

# Aliases
alias c="code"
alias c.="code ."
alias nr="npm run"
