set fish_greeting
set -gx fish_escape_delay_ms 300
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx PATH ~/bin:/usr/local/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH $HOME/.orbstack/bin $PATH
set -gx GOPATH ~/Projects/golang
set -gx PATH $GOPATH/bin $PATH
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -Ux FZF_DEFAULT_OPTS "\
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none \
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"

abbr пше 'git'
abbr ff 'fastfetch'
abbr tg 'topgrade --disable mas'
abbr ls 'eza --all --long --icons --git'
abbr af 'curl -s  https://www.affirmations.dev/ | jq -r ".affirmation"'
abbr bubu 'brew update && brew outdated && brew upgrade && brew cleanup'
abbr genpass 'LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom | head -c 20 | pbcopy'
abbr flushdns 'sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
abbr rlp 'rm -rf /private$(getconf DARWIN_USER_DIR)com.apple.dock.launchpad; killall Dock'

# connect to vps
abbr cu 'ssh 141.144.253.216 -l golman'
abbr cs 'ssh 192.168.1.111 -l grigorii.golman'

fzf --fish | source

zoxide init fish | source

starship init fish | source
