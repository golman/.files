#!/usr/bin/env bash

# update your sudo config
# sudo visudo -f /private/etc/sudoers.d/openconnect
# replace <user> with your username (output of: whoami):
# change the path to the openconnect binary if necessary (output of: which openconnect)
# <user> ALL = (ALL) NOPASSWD: /usr/local/bin/openconnect
# <user> ALL = (ALL) NOPASSWD: /usr/bin/killall -2 openconnect

# add your username, password and domain to the keychain
# security add-generic-password -a 'noname' -s 'work username' -w "username"
# security add-generic-password -a 'noname' -s 'work password' -w "password"
# security add-generic-password -a 'noname' -s 'work domain' -w "domain"

# terminal-notifier
shopt -s expand_aliases
alias notify="/usr/local/bin/terminal-notifier &>/dev/null -title OpenConnect -group CISCO -ignoreDnD -message"

# user settings
VPN_EXECUTABLE="/usr/local/bin/openconnect"
VPN_HOST=$(eval "security find-generic-password -ws 'work domain'")
VPN_USERNAME=$(eval "security find-generic-password -ws 'work username'")
VPN_PASSWORD=$(eval "security find-generic-password -ws 'work password'")
VPN_INTERFACE="utun99"

# command to determine if vpn is connected or disconnected (counts inets on target interface)
VPN_CONNECTED="/sbin/ifconfig $VPN_INTERFACE 2>/dev/null | grep inet | wc -l"

# command to run to disconnect vpn
VPN_DISCONNECT_CMD="sudo killall -2 openconnect"

case "$1" in
    connect)
        notify "Connecting..."
        echo -e "clientvpn\n${VPN_PASSWORD}\n" | sudo "$VPN_EXECUTABLE" -u "$VPN_USERNAME" -i "$VPN_INTERFACE" "$VPN_HOST" &> ~/.openconnect_session.log &
        # wait for connection so menu item refreshes instantly
        until [ "$(eval "$VPN_CONNECTED")"  -gt "0" ]; do sleep 1; done
        networksetup -setdnsservers Wi-Fi 172.24.0.101 172.17.17.101 192.168.31.1 1.1.1.1 8.8.8.8
        notify "Connected"
    ;;
    disconnect)
        notify "Disconnecting..."
        eval "$VPN_DISCONNECT_CMD"
        # wait for disconnection so menu item refreshes instantly
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
