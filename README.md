### .files

powered by [dotbot](https://github.com/anishathalye/dotbot)

clone and run `./install`

install [Homebrew](https://brew.sh/) 'n' run `brew bundle`

install [Oh My Zsh](https://ohmyz.sh/)

install [Starship: Cross-Shell Prompt](https://starship.rs/)

###### plugins for oh-my-zsh
* [zsh-auto-notify](https://github.com/MichaelAquilina/zsh-auto-notify)
* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [zsh-completions](https://github.com/zsh-users/zsh-completions)
* [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

###### honk!
0. copy: `extra/Honk.aiff` to the `/Library/Audio/Sounds/Alerts/`
1. open System Preferences > Sound > Sound Effects
2. select "Honk"
3. HONK

### macOS useful terminal commands and links

[macOS Setup Guide](https://sourabhbajaj.com/mac-setup/)

[iTerm2 + zsh + oh-my-zsh + Material Design The Most Power Full Terminal on macOS](https://medium.com/@rafavinnce/iterm2-zsh-oh-my-zsh-material-design-the-most-power-full-terminal-on-macos-332b1ee364a5)

[Spotify themes](https://github.com/morpheusthewhite/spicetify-themes) for [Spicetify](https://github.com/khanhas/spicetify-cli)

A collection of [ZSH frameworks, plugins, themes and tutorials](https://github.com/unixorn/awesome-zsh-plugins)

[Clippy from Microsoft Office](https://github.com/Cosmo/Clippy) is back and runs on macOS! Written in Swift

Reset the [smc](https://support.apple.com/en-us/HT201295), [nvram or pram](https://support.apple.com/en-us/HT204063)

###### using homebrew zsh instead of the macos system default
```
sudo vim /etc/shells
```
add `/usr/local/bin/zsh`
```
chsh -s /usr/local/bin/zsh
```

###### reset launchpad
```
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
```

###### launchpad columns and rows
```
defaults write com.apple.dock springboard-columns -int 10
```
```
defaults write com.apple.dock springboard-rows -int 5
```

###### global packages
```
npm i -g npm npm-check-updates
```

###### remove all .ds_store files
```
sudo find / -name '.DS_Store' -depth -exec rm {} \;
```
```
sudo find / -name '.DS_Store' -type f -delete
```

###### install and uninstall [homebrew](https://brew.sh/)
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"
```

###### generate a new rsa ssh key pair
```
ssh-keygen -t rsa -b 2048 -C "george.golman@gmail.com"
```

###### disable creation metadata files on network and usb volumes
```
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
```
```
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
```

###### disable cmd+shift+i in chrome and safari
```
defaults write com.google.Chrome NSUserKeyEquivalents -dict-add 'Email Page Location' '\0'
```
```
defaults write com.google.Chrome.canary NSUserKeyEquivalents -dict-add 'Email Page Location' '\0'
```
```
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add 'Email Link to This Page' '\0' 'Email This Page' '\0'
```

###### disable/enable tab in modal dialogs
```
defaults write NSGlobalDomain AppleKeyboardUIMode -int 0
```
```
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
```

###### clear dns cache
```
sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder
```

###### run "damaged" apps
```
sudo xattr -rd com.apple.quarantine /Applications/xxx.app
```

###### commit with random message
```
git commit -m '$(curl -s whatthecommit.com/index.txt)'
```

###### weather
```
curl http://wttr.in/spb
```

###### affirmation
```
curl -s  https://www.affirmations.dev/ | jq -r ".affirmation"
```

###### generate secure password and copy to clipboard
```
LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom | head -c 20 | pbcopy
```

###### open link from tweetbot directly
```
defaults write com.tapbots.TweetbotMac OpenURLsDirectly YES
```

###### convert line endings in files
```
find . -type f | xargs -n1 dos2unix
```
```
find . -name '*.js' -type f -exec dos2unix {} \;
```

###### create a big sur bootable installer other versions [here](https://support.apple.com/en-us/HT201372)
```
sudo /Applications/Install\ macOS\ Big\ Sur.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```
