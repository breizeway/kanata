#!/bin/zsh

# Start the Karabiner daemon in the background
cat password.txt | (nohup sudo -S '/Library/Application Support/org.pqrs/Karabiner-DriverKit-VirtualHIDDevice/Applications/Karabiner-VirtualHIDDevice-Daemon.app/Contents/MacOS/Karabiner-VirtualHIDDevice-Daemon' &>/dev/null &) || echo "ERROR: Failed to start Karabiner daemon"

# Small delay to ensure daemon is running
# sleep 2

# Start kanata in the background 
cat password.txt | (nohup sudo -S ~/mods/kanata/kanata_macos_arm64_v1p8p0 --cfg ~/mods/kanata/keymap.kbd &>/dev/null &) || echo "ERROR: Failed to start kanata"