#!/bin/sh

set -eu

# Set deploy key
SSH_PATH="$HOME/.ssh"
mkdir "$SSH_PATH"
echo "$PRIVATE_DEPLOY_KEY" > "$SSH_PATH/deploy_key"
chmod 600 "$SSH_PATH/deploy_key"

# Do deployment
ssh -i $SSH_PATH/deploy_key -o 'StrictHostKeyChecking=no' $USER@$HOST "cd $WORKSPACE && $*"
