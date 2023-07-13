### .files

powered by [dotbot](https://github.com/anishathalye/dotbot)

clone and run `./install.sh`

install [Homebrew](https://brew.sh/) 'n' run `brew bundle`
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

install [Warp terminal](https://app.warp.dev/referral/2ERWL6)

install [NvChad](https://nvchad.github.io/)
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

###### using homebrew zsh or fish instead of the macOS system default
run
```
echo $(which zsh) | sudo tee -a /etc/shells && chsh -s $(which zsh)
```
or
```
echo $(which fish) | sudo tee -a /etc/shells && chsh -s $(which fish)
```

###### oh-my-zsh and plugins for it
* [Oh My ZSH!](https://ohmyz.sh/)
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
* [Desktop notifications for long-running commands in zsh](https://github.com/marzocchi/zsh-notify)
```
git clone git@github.com:marzocchi/zsh-notify.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/notify
```
* [Fish-like autosuggestions for zsh](https://github.com/zsh-users/zsh-autosuggestions)
```
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
* [Additional completion definitions for Zsh](https://github.com/zsh-users/zsh-completions)
```
git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
```
* [Fish-shell like syntax highlighting for Zsh](https://github.com/zsh-users/zsh-syntax-highlighting)
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
* [A native Zsh port of z.sh with added features](https://github.com/agkozak/zsh-z)
```
git clone https://github.com/agkozak/zsh-z.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-z
```

###### plugins for fish
* [A curation of prompts, plugins, & resources for Fish](https://github.com/jorgebucaran/awsm.fish)
* [A plugin manager for Fish](https://github.com/jorgebucaran/fisher)
* [A fish-shell package to automatically receive notifications when long processes finish](https://github.com/franciscolourenco/done)
* [Make your prompt asynchronous to improve the reactivity](https://github.com/acomagu/fish-async-prompt)
* [Pure-fish z directory jumping](https://github.com/jethrokuan/z)
* [Augment your fish command line with fzf key bindings](https://github.com/PatrickF1/fzf.fish)
* [sudope plugin for Fisher. Quickly put "sudo" in your command](https://github.com/Dimentium/plugin-sudope)
* [A utility tool powered by fzf for using git interactively](https://github.com/wfxr/forgit)

```
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```
```
fisher install franciscolourenco/done acomagu/fish-async-prompt jethrokuan/z PatrickF1/fzf.fish Dimentium/plugin-sudope wfxr/forgit
```

###### enabling touch id authorization for sudo
```bash
sudo vim /etc/pam.d/sudo
```
```
auth       sufficient     pam_tid.so
```

###### honk!
1. copy: `honk.aiff` to the `/Library/Audio/Sounds/Alerts/`
2. open System Preferences > Sound > Sound Effects
3. select "honk"
4. HONK

### macOS useful terminal commands and links

[macOS Setup Guide](https://sourabhbajaj.com/mac-setup/)

[Starship: Cross-Shell Prompt](https://github.com/starship/starship) — [The minimal, blazing-fast, and infinitely customizable prompt for any shell!](https://starship.rs/)

[NvChad](https://github.com/NvChad/NvChad) — [An attempt to make neovim cli as functional as an IDE while being very beautiful, blazing fast](https://nvchad.github.io/)

[Backup and Restore GPG key](https://www.jwillikers.com/backup-and-restore-a-gpg-key)

[Spotify themes](https://github.com/morpheusthewhite/spicetify-themes) for [Spicetify](https://github.com/khanhas/spicetify-cli)

A collection of [ZSH frameworks, plugins, themes and tutorials](https://github.com/unixorn/awesome-zsh-plugins)

[Clippy from Microsoft Office](https://github.com/Cosmo/Clippy) is back and runs on macOS! Written in Swift

###### add [file glyphs / icon support](https://github.com/alexanderjeurissen/ranger_devicons) to [ranger](https://ranger.github.io/)
```
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```
```
echo "default_linemode devicons" >> ~/.config/ranger/rc.conf
```

###### global packages
```
npm install --global npm-check-updates license-checker all-the-package-names
```

###### IntelliJ IDEA hides a path in the project tree

Help → Edit Custom Properties… → add the following
```
project.tree.structure.show.url=false
```

###### reset launchpad
```
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
```

##### show dock after delay (in seconds)
```
defaults write com.apple.Dock autohide-delay -float 13; killall Dock
```
```
defaults delete com.apple.Dock autohide-delay; killall Dock
```

###### show app switcher on all displays
```
defaults write com.apple.Dock appswitcher-all-displays -bool true; killall Dock
```

###### launchpad columns and rows
```
defaults write com.apple.dock springboard-columns -int 10
```
```
defaults write com.apple.dock springboard-rows -int 5
```

###### remove all .ds_store files
```
sudo find / -name '.DS_Store' -depth -exec rm {} \;
```
```
sudo find / -name '.DS_Store' -type f -delete
```

###### generate a new rsa ssh key pair
```
ssh-keygen -t rsa -b 2048 -C "george.golman@gmail.com"
```

###### disable the creation of metadata files on network and usb volumes
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

###### commit with a random message
```
git commit -m '$(curl -s whatthecommit.com/index.txt)'
```

###### weather
```
curl https://wttr.in/prg
```

###### affirmation
```
curl -s  https://www.affirmations.dev/ | jq -r ".affirmation"
```

###### generate secure password and copy to clipboard
```
LC_ALL=C tr -dc "[:alnum:]" < /dev/urandom | head -c 20 | pbcopy
```

###### create a ventura bootable installer. other versions [here](https://support.apple.com/en-us/HT201372)
```
sudo /Applications/Install\ macOS\ Ventura.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```
