#!/bin/bash
# Credit for original concept and initial work to: Jesse Jarzynka & Ventz Petkov

# <bitbar.title>VPN Status</bitbar.title>
# <bitbar.version>v1.1</bitbar.version>
# <bitbar.author>Ventz Petkov</bitbar.author>
# <bitbar.author.github>ventz</bitbar.author.github>
# <bitbar.desc>Connect/Disconnect OpenConnect + show status</bitbar.desc>
# <bitbar.image></bitbar.image>

#########################################################
# USER CHANGES #
#########################################################

# 1.) Updated your sudo config with (edit "osx-username" with your username): 
#osx-username ALL=(ALL) NOPASSWD: /opt/homebrew/bin/openconnect
#osx-username ALL=(ALL) NOPASSWD: /usr/bin/killall -2 openconnect

# Use terminal-notifier. You can change it to something else
shopt -s expand_aliases
alias notify="/usr/local/bin/terminal-notifier &>/dev/null -title OpenConnect -group CISCO -ignoreDnD -message"
# alias notify="echo $(date) >> ~/.config/bitbar/openconnect.log"

VPN_EXECUTABLE="/usr/local/bin/openconnect"
# VPN_HOST_KEYCHAIN="01C2A84F-39E7-4BBF-A46D-46B9C6AC9388-A"
# VPN_HOST=$(eval "security find-generic-password -wa $VPN_HOST_KEYCHAIN")
# VPN_GROUP_KEYCHAIN="01C2A84F-39E7-4BBF-A46D-46B9C6AC9388-G"
# VPN_GROUP=$(eval "security find-generic-password -wa $VPN_GROUP_KEYCHAIN")
# VPN_USERNAME_KEYCHAIN="ED9C0A28-5CB2-4B13-9C4D-930E076D9CFB-L"
# VPN_USERNAME=$(eval "security find-generic-password -wa $VPN_USERNAME_KEYCHAIN")
VPN_HOST="spbcvp.veeam.com"
VPN_USERNAME="grigorii.golman@veeam.com"
VPN_PASSWORD_KEYCHAIN="ED9C0A28-5CB2-4B13-9C4D-930E076D9CFB"
VPN_PASSWORD=$(eval "security find-generic-password -wa $VPN_PASSWORD_KEYCHAIN")
VPN_INTERFACE="utun99"

# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
# END-OF-USER-SETTINGS #
#########################################################


# Command to determine if VPN is connected or disconnected (counts inets on target interface)
VPN_CONNECTED="/sbin/ifconfig $VPN_INTERFACE 2>/dev/null | grep inet | wc -l"

# Command to run to disconnect VPN
VPN_DISCONNECT_CMD="sudo killall -2 openconnect"

case "$1" in
    connect)
        notify "Connecting..."
        echo -e "clientvpn\n${VPN_PASSWORD}\n" | sudo "$VPN_EXECUTABLE" -u "$VPN_USERNAME" -i "$VPN_INTERFACE" "$VPN_HOST" &> ~/.openconnect_session.log &
        # Wait for connection so menu item refreshes instantly
        until [ "$(eval "$VPN_CONNECTED")"  -gt "0" ]; do sleep 1; done
        networksetup -setdnsservers Wi-Fi 172.24.0.101 172.17.17.101 192.168.31.1 1.1.1.1 8.8.8.8
        notify "Connected"
    ;;
    disconnect)
        notify "Disconnecting..."
        eval "$VPN_DISCONNECT_CMD"
        # Wait for disconnection so menu item refreshes instantly
        until [ "$(eval "$VPN_CONNECTED")" -eq "0" ]; do sleep 1; done
        networksetup -setdnsservers Wi-Fi 192.168.31.1 1.1.1.1
        notify "Disconnected"
    ;;
    toggle)
        if [ "$(eval "$VPN_CONNECTED")"  -eq "0" ]; then
            $0 connect
        else
            $0 disconnect
        fi
    ;;
esac

if [ "$(eval "$VPN_CONNECTED")" -gt "0" ]; then
    echo "👷‍♂️"
    echo '---'
    echo "Disconnect VPN | bash='$0' param1=disconnect terminal=false refresh=true"
    networksetup -getdnsservers Wi-Fi 
    exit
else
    echo "🍄"
    echo '---'
    echo "Connect VPN | bash='$0' param1=connect terminal=false refresh=true"
    # networksetup -setdnsservers Wi-Fi 192.168.31.1 1.1.1.1
    networksetup -getdnsservers Wi-Fi 
    exit
fi