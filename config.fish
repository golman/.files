set fish_greeting
set -gx fish_escape_delay_ms 300
set -gx PATH ~/bin:/usr/local/bin $PATH
set -gx PATH /usr/local/opt/curl/bin $PATH
set -gx PATH /usr/local/opt/wget/bin $PATH
set -gx PATH /usr/local/opt/node@18/bin $PATH
set -gx PATH /usr/local/opt/python@3/bin $PATH
set -gx PATH /usr/local/opt/ruby/bin $PATH
set -gx PATH /usr/local/opt/openvpn/sbin $PATH
set -gx PATH ~/Library/Python/3.10/bin $PATH
set -gx PATH ~/.local/share/gem/ruby/3.0.0/bin $PATH
set -gx PATH ~/.cargo/bin $PATH
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
set -gx GOPATH ~/Projects/golang
set -gx GOROOT /usr/local/opt/go/libexec
set -gx PATH $GOPATH/bin $PATH
set -gx PATH $GOROOT/bin $PATH

abbr vim 'nvim'
abbr cat 'bat'
abbr пше 'git'
abbr ls 'ls -G'
abbr ll 'ls -lG'
abbr la 'ls -laG'
abbr af 'curl -s  https://www.affirmations.dev/ | jq -r ".affirmation"'
abbr bubu 'brew update && brew outdated && brew upgrade && brew cleanup'
abbr genpass 'LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom | head -c 20 | pbcopy'
abbr flushdns 'sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'
abbr rlp 'defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'
# for build project
abbr da 'cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -DskipTests -Denvironment.name=golman'
abbr dp 'cd ~/Projects/veeam.com/veeam-cms.apps && mvn clean install -Pdeploy-package -DskipTests -Denvironment.name=golman'
abbr вф 'cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all -DskipTests -Denvironment.name=golman'
abbr вз 'cd ~/Projects/veeam.com/veeam-cms.apps && mvn clean install -Pdeploy-package -DskipTests -Denvironment.name=golman'
abbr dfull 'cd ~/Projects/veeam.com/ && mvn clean install -Pdeploy-all,deploy-all-publish -DskipTests -Denvironment.name=golman -Daem.port=4502 -Daem.publish.port=4503'
abbr dconf 'cd ~/Projects/veeam.com/veeam-cms.extras/veeam-cms.config/ && mvn clean install -Pdeploy-package -Denvironment.name=golman && mvn clean install -Pdeploy-package -Denvironment.name=golman -Daem.port=4503'
abbr dpolicy 'cd ~/Projects/veeam.com/veeam-cms.extras/veeam-cms.policy/ && mvn clean install -Pdeploy-package -Denvironment.name=golman && mvn clean install -Pdeploy-package -Denvironment.name=golman -Daem.port=4503'
abbr dusers 'cd ~/Projects/veeam.com/veeam-cms.extras/veeam-cms.users/ && mvn clean install -Pdeploy-package -Denvironment.name=golman && mvn clean install -Pdeploy-package -Denvironment.name=golman -Daem.port=4503'
abbr dworkflows 'cd ~/Projects/veeam.com/veeam-cms.extras/veeam-cms.workflows/ && mvn clean install -Pdeploy-package -Denvironment.name=golman && mvn clean install -Pdeploy-package -Denvironment.name=golman -Daem.port=4503'
abbr dgds 'cd ~/Projects/veeam.com/automation/prod-data/ && ./install.sh AKCp8mYUzMmwLoS3o7hN1rjwyAWoQWC41dmUwFtPJVWur6EVjqsBwo8hBfmCnmT8fGtsiHHDC'
# connect to vpn
abbr vc 'sudo openvpn ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/client.ovpn'
# connect to vps
abbr cs 'ssh golman.cis.local -l golman'
abbr cvs 'ssh node.inf-01.ggolman.dev.prg.esx.cis.local -l golman'

starship init fish | source
