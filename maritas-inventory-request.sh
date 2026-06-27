#!/bin/zsh

# Script to send a weekly inventory update request to Maritas via Telegram.
# To be run by launchd every Friday.

# Ensure OpenClaw CLI is in PATH for the launchd environment
export PATH="/opt/homebrew/bin:$PATH"

# Navigate to the workspace
cd /Users/djstd/.openclaw/workspace || exit 1

# Send the inventory request message to Maritas to the GROUP CHAT
# The message is carefully escaped for the shell to avoid parsing errors.
/opt/homebrew/bin/openclaw message send --channel telegram --target -1004428744591 --message "Hello Maritas. This is the Home Manager bot. Please reply to THIS GROUP CHAT with an updated list of the main food ingredients currently available in the fridge, freezer, and pantry. This will help with next week's meal planning. Thank you!"

# Log success/failure
if [ $? -eq 0 ]; then
  echo "$(date +'%Y-%m-%d %H:%M:%S'): Successfully sent inventory request to Maritas." >> /Users/djstd/.openclaw/workspace/maritas-inventory-request.log
elif [ $? -ne 0 ]; then
  echo "$(date +'%Y-%m-%d %H:%M:%S'): Failed to send inventory request to Maritas." >> /Users/djstd/.openclaw/workspace/maritas-inventory-request.log
fi
