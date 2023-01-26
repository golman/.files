### .files

powered by [dotbot](https://github.com/anishathalye/dotbot)

clone and run `./install.sh`

install [Homebrew](https://brew.sh/) 'n' run `brew bundle`
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

install [Oh My Zsh](https://ohmyz.sh/)
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

install [NvChad](https://nvchad.github.io/)
```
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

###### using homebrew zsh or fish instead of the macos system default
```
sudo vim /etc/shells
```
add
```
/usr/local/bin/zsh
/usr/local/bin/fish
```
run
```
chsh -s /usr/local/bin/zsh
```
or
```
chsh -s /usr/local/bin/fish
```

###### plugins for oh-my-zsh
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
* [Fish shell like syntax highlighting for Zsh](https://github.com/zsh-users/zsh-syntax-highlighting)
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
* [sudope plugin for Fisher. Quickly put 'sudo' in your command](https://github.com/Dimentium/plugin-sudope)

```
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```
```
fisher install franciscolourenco/done acomagu/fish-async-prompt jethrokuan/z PatrickF1/fzf.fish Dimentium/plugin-sudope
```

###### enabling touch id authorization for sudo
```bash
sudo vim /etc/pam.d/sudo
```
```
auth       sufficient     pam_tid.so
```

###### honk!
0. copy: `honk.aiff` to the `/Library/Audio/Sounds/Alerts/`
1. open System Preferences > Sound > Sound Effects
2. select "honk"
3. HONK

### macOS useful terminal commands and links

https://www.jwillikers.com/backup-and-restore-a-gpg-key

[macOS Setup Guide](https://sourabhbajaj.com/mac-setup/)

[kitty — the fast, featureful, GPU based terminal emulator](https://sw.kovidgoyal.net/kitty/index.html)

[iTerm2 + zsh + oh-my-zsh + Material Design The Most Power Full Terminal on macOS](https://medium.com/@rafavinnce/iterm2-zsh-oh-my-zsh-material-design-the-most-power-full-terminal-on-macos-332b1ee364a5)

[Starship: Cross-Shell Prompt](https://github.com/starship/starship) — [The minimal, blazing-fast, and infinitely customizable prompt for any shell!](https://starship.rs/)

[NvChad](https://github.com/NvChad/NvChad) — [An attempt to make neovim cli as functional as an IDE while being very beautiful, blazing fast](https://nvchad.github.io/)

[How to use sudo with Touch ID on your Mac](https://www.imore.com/how-use-sudo-your-mac-touch-id)

[Spotify themes](https://github.com/morpheusthewhite/spicetify-themes) for [Spicetify](https://github.com/khanhas/spicetify-cli)

A collection of [ZSH frameworks, plugins, themes and tutorials](https://github.com/unixorn/awesome-zsh-plugins)

[Clippy from Microsoft Office](https://github.com/Cosmo/Clippy) is back and runs on macOS! Written in Swift

Reset the [smc](https://support.apple.com/en-us/HT201295), [nvram or pram](https://support.apple.com/en-us/HT204063)

###### [using kitty as a custom terminal](https://25.wf/posts/2020-03-23-alfred-kitty.html) for [alfred](https://www.alfredapp.com)
```
on alfred_script(q)
	tell application "kitty" to activate
	do shell script "/Applications/Kitty.app/Contents/MacOS/kitty @ --to unix:/tmp/mykitty new-window --new-tab"
	tell application "System Events" to keystroke q
	tell application "System Events"
		key code 36 -- enter key
	end tell
end alfred_script
```

###### [using iterm2 as a custom terminal](https://github.com/vitorgalvao/custom-alfred-iterm-scripts) for [alfred](https://www.alfredapp.com)
```
curl --silent 'https://raw.githubusercontent.com/vitorgalvao/custom-alfred-iterm-scripts/master/custom_iterm_script.applescript' | pbcopy
```

###### add [devicons](https://github.com/alexanderjeurissen/ranger_devicons) plugin to [ranger](https://ranger.github.io/)
```
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```
```
echo "default_linemode devicons" >> ~/.config/ranger/rc.conf
```

###### launch [sublime text](https://www.sublimetext.com/) from the command-line via `subl`
```
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
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

###### global packages
```
npm install --global npm-check-updates license-checker
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

###### create a ventura bootable installer. other versions [here](https://support.apple.com/en-us/HT201372)
```
sudo /Applications/Install\ macOS\ Ventura.app/Contents/Resources/createinstallmedia --volume /Volumes/MyVolume
```
