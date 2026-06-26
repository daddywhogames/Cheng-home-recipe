#!/bin/zsh

# Script to send a weekly inventory update request to Maritas via Telegram.
# To be run by launchd every Friday.

# Ensure OpenClaw CLI is in PATH
export PATH="/opt/homebrew/bin:$PATH"

# Send the inventory request message to Maritas (Telegram User ID: 8729435534)
# The message is carefully escaped for the shell.
/opt/homebrew/bin/openclaw message send --channel telegram --target 8729435534 --message "Hello Maritas. This is the Home Manager bot. Please reply with an updated list of the main food ingredients currently available in the fridge, freezer, and pantry. This will help with next week's meal planning. Thank you!"

# Log success/failure (optional, for debugging)
if [ $? -eq 0 ]; then
  echo "$(date): Successfully sent inventory request to Maritas." >> /Users/djstd/.openclaw/workspace/maritas-inventory-request.log
elif [ $? -ne 0 ]; then
  echo "$(date): Failed to send inventory request to Maritas." >> /Users/djstd/.openclaw/workspace/maritas-inventory-request.log
fi
