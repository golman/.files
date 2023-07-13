set fish_greeting
set -gx fish_escape_delay_ms 300
set -gx LANG en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx PATH ~/bin:/usr/local/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
set -gx GOPATH ~/Projects/golang
set -gx PATH $GOPATH/bin $PATH

abbr пше 'git'
abbr ff 'fastfetch'
abbr ls 'lsd --all --long'
abbr tg 'topgrade --disable mas'
abbr tm 'tmux attach -t default || tmux new -s default'
abbr af 'curl -s  https://www.affirmations.dev/ | jq -r ".affirmation"'
abbr bubu 'brew update && brew outdated && brew upgrade && brew cleanup'
abbr genpass 'LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom | head -c 20 | pbcopy'
abbr flushdns 'sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
abbr rlp 'defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'
# for build project
abbr da 'cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -DskipTests -Denvironment.name=golman'
abbr вф 'cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -DskipTests -Denvironment.name=golman'
abbr dat 'cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -Denvironment.name=golman'
abbr dp 'cd ~/Projects/veeam.com/veeam-cms.apps && mvn clean install -Pdeploy-package -DskipTests -Denvironment.name=golman'
abbr вз 'cd ~/Projects/veeam.com/veeam-cms.apps && mvn clean install -Pdeploy-package -DskipTests -Denvironment.name=golman'
abbr dpt 'cd ~/Projects/veeam.com/veeam-cms.apps && mvn clean install -Pdeploy-package -Denvironment.name=golman'
abbr deploy_full 'cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all,deploy-all-publish -DskipTests -Denvironment.name=golman -Daem.port=4502 -Daem.publish.port=4503'
abbr deploy_gds 'cd ~/Projects/veeam.com/automation/prod-data/ && ./install.sh AKCp8mYUzMmwLoS3o7hN1rjwyAWoQWC41dmUwFtPJVWur6EVjqsBwo8hBfmCnmT8fGtsiHHDC'

# connect to vpn
abbr vc 'sudo openvpn ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/client.ovpn'

# connect to vps
# abbr cs 'ssh golman.cis.local -l golman'
abbr cs 'ssh node.inf-01.ggolman.dev.prg.esx.cis.local -l golman'
abbr cu 'ssh 141.144.253.216 -l golman'

starship init fish | source
