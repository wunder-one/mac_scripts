#!/bin/zsh

### How to use this script:
# This script is intended for administrators who need to set up JetBrains IDEs to automatically connect to a License Server.
# It sets a system-wide environment variable for the JetBrains License Server URL on macOS devices.

### Usage:
# 1. Replace 'http://your-license-server-url' with the actual URL of your JetBrains License Server.
# 2. Deploy this script via your MDM solution (e.g., Kandji).
# 3. Ensure this script runs with administrative privileges to modify the /etc/zshrc file. 
#    (Many MDMs will do this automatically)
# 4. Once deployed, any JetBrains IDE launched on the system will default to this license server URL.


# Path to the global zsh configuration file
GLOBAL_ZSHRC="/etc/zshrc"

# EDIT URL HERE! Set the environment variable value for the JetBrains License Server.
LICENSE_SERVER_URL="http://your-license-server-url"

# Append the export command to the global zsh configuration file.
echo "export JETBRAINS_LICENSE_SERVER=$LICENSE_SERVER_URL" >> $GLOBAL_ZSHRC
