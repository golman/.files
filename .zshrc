# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/wget/bin:$PATH"
export PATH="/usr/local/opt/python@3.9/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/openvpn/sbin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.0.0/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home"

# Path to your oh-my-zsh installation.
export ZSH="/Users/golman/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  auto-notify
  brew
  colored-man-pages
  colorize
  fzf
  git
  golang
  gulp
  macos
  mvn
  node
  npm
  python
  ruby
  sudo
  tmux
  vscode
  yarn
  zsh-autosuggestions
  zsh-completions
  zsh-syntax-highlighting
  zsh-z
)

source $ZSH/oh-my-zsh.sh

# User configuration

HISTFILE=~/.zsh_history

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Set threshold and message for notifier
export AUTO_NOTIFY_THRESHOLD=3
export AUTO_NOTIFY_TITLE="%command"
export AUTO_NOTIFY_BODY="completed in %elapsed seconds with exit code %exit_code"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run alias.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cat='lolcat'
alias vim='nvim'
alias ls='ls -G'
alias ll='ls -lG'
alias la='ls -laG'
alias af='curl -s  https://www.affirmations.dev/ | jq -r ".affirmation"'
alias rlp='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
# for build project
alias da="cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -Denvironment.name=golman -DskipTests"
alias dat="cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -Denvironment.name=golman"
alias dp="cd ~/Projects/veeam.com/veeam-cms.apps && mvn clean install -Pdeploy-package -Denvironment.name=golman -DskipTests"
alias dpt="cd ~/Projects/veeam.com/veeam-cms.apps && mvn clean install -Pdeploy-package -Denvironment.name=golman"
alias dfull='cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -Denvironment.name=golman -DskipTests && mvn clean install -Pdeploy-all -Denvironment.name=golman -Daem.port=4503 -DskipTests'
alias dconf='cd ~/Projects/veeam.com/veeam-cms.extras/veeam-cms.config/ && mvn clean install -Pdeploy-package -Denvironment.name=golman && mvn clean install -Pdeploy-package -Denvironment.name=golman -Daem.port=4503'
alias dpolicy='cd ~/Projects/veeam.com/veeam-cms.extras/veeam-cms.policy/ && mvn clean install -Pdeploy-package -Denvironment.name=golman && mvn clean install -Pdeploy-package -Denvironment.name=golman -Daem.port=4503'
alias dusers='cd ~/Projects/veeam.com/veeam-cms.extras/veeam-cms.users/ && mvn clean install -Pdeploy-package -Denvironment.name=golman && mvn clean install -Pdeploy-package -Denvironment.name=golman -Daem.port=4503'
alias dworkflows='cd ~/Projects/veeam.com/veeam-cms.extras/veeam-cms.workflows/ && mvn clean install -Pdeploy-package -Denvironment.name=golman && mvn clean install -Pdeploy-package -Denvironment.name=golman -Daem.port=4503'
alias dgds='cd ~/Projects/veeam.com/automation/prod-data/ && ./install.sh AKCp5e3VKDag3wMpiCs5nnXKmvcyzbbpz7qVTm4eHw4CgABJS78yXbNpQrumwTvv1T9x7oERR'
# connect to vpn
alias vc='sudo openvpn ~/Library/Mobile\ Documents/com~apple~CloudDocs/Files/client.ovpn'
# connect to vps
alias cs="ssh golman.cis.local -l golman"
alias cvs="ssh node.inf-01.ggolman.dev.prg.esx.cis.local -l golman"

eval "$(starship init zsh)"

autoload -U compinit && compinit
