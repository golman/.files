# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/Library/Python/3.11/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export GOPATH="$HOME/Projects/golang"
export PATH="$GOPATH/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder    # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
if [[ $TERM_PROGRAM != "WarpTerminal" ]];
    then
        plugins=(
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
          notify
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
    else
        plugins=(
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
          zsh-z
        )
fi

source $ZSH/oh-my-zsh.sh

# User configuration

HISTFILE=~/.zsh_history

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

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
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='lsd --all --long'
alias af='curl -s  https://www.affirmations.dev/ | jq -r ".affirmation"'
alias rlp='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
alias пше='git'
alias ff='fastfetch'
alias tg='topgrade --disable mas'
alias tm='tmux attach -t default || tmux new -s default'
# for build project
alias da="cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -Denvironment.name=golman -DskipTests"
alias вф="cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -Denvironment.name=golman -DskipTests"
alias dat="cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -Denvironment.name=golman"
alias dp="cd ~/Projects/veeam.com/veeam-cms.apps && mvn clean install -Pdeploy-package -Denvironment.name=golman -DskipTests"
alias вз="cd ~/Projects/veeam.com/veeam-cms.apps && mvn clean install -Pdeploy-package -Denvironment.name=golman -DskipTests"
alias dpt="cd ~/Projects/veeam.com/veeam-cms.apps && mvn clean install -Pdeploy-package -Denvironment.name=golman"
alias deploy_full='cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all,deploy-all-publish -DskipTests -Denvironment.name=golman -Daem.port=4502 -Daem.publish.port=4503'
alias deploy_gds='cd ~/Projects/veeam.com/automation/prod-data/ && ./install.sh AKCp8mYUzMmwLoS3o7hN1rjwyAWoQWC41dmUwFtPJVWur6EVjqsBwo8hBfmCnmT8fGtsiHHDC'
# connect to vpn
alias vc='sudo openvpn ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/client.ovpn'
# connect to vps
# alias cs="ssh golman.cis.local -l golman"
alias cs="ssh node.inf-01.ggolman.dev.prg.esx.cis.local -l golman"
alias cu="ssh 141.144.253.216 -l golman"

# bash and zsh
# if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
#     eval "$(starship init zsh)"
# fi

eval "$(starship init zsh)"

autoload -U compinit && compinit
