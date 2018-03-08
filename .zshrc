export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH

source .secure

# history format
export HISTTIMEFORMAT="%d-%m-%y %T "
# fix 256 colors warning
export TERM="xterm-256color"
# Path to oh-my-zsh installation.
export ZSH=/Users/ip/.oh-my-zsh

# Theme
POWERLEVEL9K_MODE='awesome-patched'
ZSH_THEME="powerlevel9k/powerlevel9k"

#editor
export EDITOR='vi'

#MacTex
export PATH=/Library/TeX/texbin:$PATH
# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
#rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

export LANG="en_US.UTF-8"
export LC_COLLATE="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="en_US.UTF-8"
export LC_NUMERIC="en_US.UTF-8"
export LC_TIME="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# start tmux
ZSH_TMUX_AUTOSTART='true'

#oh-my-zsh plugins
plugins=(
	git docker docker-compose git-extras battery iterm2 tmux z heroku tig thefuck zsh-autosuggestions zsh-syntax-highlighting zsh-completions
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source ~/.config/tmuxinator.zsh

# run z
. $(brew --prefix)/etc/profile.d/z.sh

# hide default username
DEFAULT_USER="ip"

# aliases
# replace vi with vim
alias vi='vim'

alias zshconfig="vi ~/.zshrc"
alias ohmyzsh="vi ~/.oh-my-zsh"
alias sz='source ~/.zshrc'
alias k9='killall -9'
alias ls='ls -aFG'
alias ll='exa -abghHliS'
alias weather='ansiweather -l Zagreb'
alias weather5='weather -F'
alias brewup='brew update; brew upgrade; brew cleanup -s; brew cask cleanup;  brew doctor; brew missing'
alias ssh-chk='~/.functions/check_keys.rb'
alias git-usr='~/.functions/set_git_identity.py'
alias syn-restart='~/.functions/synergy-restart.sh'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias mux='tmuxinator'

# hh config
export HISTFILE=~/.zsh_history  # ensure history file visibility
export HH_CONFIG=hicolor        # get more colors
bindkey -s "\C-r" "\eqhh\n"     # bind hh to Ctrl-r (for Vi mode check doc)

